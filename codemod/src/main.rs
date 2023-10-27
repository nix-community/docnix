use regex::Regex;
use rnix::{SyntaxKind, SyntaxNode, SyntaxToken};
use rowan::{ast::AstNode, GreenToken, NodeOrToken, WalkEvent};
use std::fs::File;
use std::io::Write;
use std::path::PathBuf;
use std::println;
use std::{env, fs};
use walkdir::WalkDir;

const EXAMPLE_LANG: &str = "nix";
const TYPE_LANG: &str = "";

fn parse_doc_comment(raw: &str, indent: usize) -> String {
    enum ParseState {
        Doc,
        Type,
        Example,
    }
    let left = " ".repeat(indent);

    let mut doc = String::new();
    let mut doc_type = String::new();
    let mut example = String::new();
    let mut state = ParseState::Doc;

    for line in raw.lines() {
        let mut line = line.trim_end();

        let trimmed = line.clone().trim();

        if trimmed.starts_with("Type:") {
            state = ParseState::Type;
            line = &trimmed[5..]; // trim 'Type:'
        }

        if trimmed.starts_with("Example:") {
            state = ParseState::Example;
            line = &trimmed[8..]; // trim 'Example:'
        }
        if trimmed.starts_with("Examples:") {
            state = ParseState::Example;
            line = &trimmed[9..]; // trim 'Examples:'
        }

        let trimmed = line.trim();

        let formatted = if !trimmed.is_empty() {
            format!("{left}{trimmed}\n")
        } else {
            format!("")
        };
        match state {
            // important: trim only trailing whitespaces; as leading ones might be markdown formatting or code examples.
            ParseState::Type => {
                doc_type.push_str(&format!("{line}\n"));
            }
            ParseState::Doc => {
                doc.push_str(&formatted);
            }
            ParseState::Example => {
                example.push_str(&format!("{line}\n"));
            }
        }
    }
    let f = |s: String| {
        if s.is_empty() {
            None
        } else {
            return Some(s.trim().to_owned());
        }
    };
    let mut markdown = format!("{left}{}", f(doc).unwrap_or("".to_owned()));
    // example and type can contain indented code
    let formatted_example = format_code(example, indent);
    let formatted_type = format_code(doc_type, indent);

    if let Some(example) = f(formatted_example) {
        markdown.push_str(&format!("\n\n{left}# Example"));
        markdown.push_str(&format!(
            "\n\n{left}```{EXAMPLE_LANG}\n{left}{example}\n{left}```"
        ));
    }

    if let Some(doc_type) = f(formatted_type) {
        markdown.push_str(&format!("\n\n{left}# Type"));
        markdown.push_str(&format!(
            "\n\n{left}```{TYPE_LANG}\n{left}{doc_type}\n{left}```"
        ));
    }

    markdown
}

fn format_comment(text: &str, prev: Option<&SyntaxToken>) -> String {
    let content = text.strip_prefix("/*").unwrap().strip_suffix("*/").unwrap();
    let mut whitespace = "";
    if let Some(prev) = prev {
        whitespace = prev.text();
    }
    let stripped = Regex::new(r#" +"#).unwrap().replace_all(whitespace, "");
    let indentation = (whitespace.len() - stripped.len()) / 2 * 2;

    let indent_1 = " ".repeat(indentation);
    let indent_2 = " ".repeat(indentation + 2);

    let lines: Vec<String> = content
        .lines()
        .map(|content| format!("{}{}", indent_2, content))
        .collect();
    let markdown = parse_doc_comment(&lines.join("\n"), indentation + 2);

    return format!("/**\n{}\n{}*/", markdown, indent_1);
}

fn format_code(text: String, ident: usize) -> String {
    let mut content = text
        .trim_end_matches("\n")
        .trim_start_matches("\n")
        .to_owned();

    while let Some(stripped) = strip_column(&content) {
        content = stripped;
    }

    let mut result = String::new();
    let left: String = " ".repeat(ident);
    for line in content.lines() {
        if line.is_empty() {
            result.push_str(&format!("\n"));
        } else {
            result.push_str(&format!("{left}{line}\n"));
        }
    }

    result
}

fn strip_column(text: &str) -> Option<String> {
    let mut result: Vec<&str> = vec![];

    let mut any_non_whitespace = false;

    for line in text.lines() {
        if line.is_empty() {
            continue;
        }
        if let Some(_) = line.strip_prefix(" ") {
        } else {
            any_non_whitespace = true;
        }
    }

    if !any_non_whitespace && !text.is_empty() {
        for line in text.lines() {
            if let Some(stripped) = line.strip_prefix(" ") {
                result.push(stripped);
            }
        }
        return Some(result.join("\n"));
    }
    return None;
}

fn replace_first_comment(syntax: &SyntaxNode) -> Option<SyntaxNode> {
    let mut result = None;
    for ev in syntax.preorder_with_tokens() {
        match ev {
            WalkEvent::Enter(node_or_token) => match node_or_token {
                NodeOrToken::Token(token) => match token.kind() {
                    SyntaxKind::TOKEN_COMMENT => {
                        if token.text().starts_with("/**") || token.text().starts_with("#") {
                            continue;
                        }
                        let replacement: GreenToken = GreenToken::new(
                            rowan::SyntaxKind(token.kind() as u16),
                            &format_comment(token.text(), token.prev_token().as_ref()),
                        );
                        let green = token.replace_with(replacement);
                        let updated = syntax.replace_with(green);

                        result = Some(rnix::SyntaxNode::new_root(updated));
                        break;
                    }
                    _ => continue,
                },
                _ => continue,
            },
            _ => continue,
        };
    }
    result
}

fn main() {
    let args: Vec<String> = env::args().collect();

    if let Some(path) = &args.get(1) {
        println!("trying to read path: {path}");
        for entry in WalkDir::new(path)
            .follow_links(true)
            .into_iter()
            .filter_map(|e| e.ok())
        {
            let f_name = entry.file_name().to_string_lossy();

            if f_name.ends_with(".nix") {
                modify_file(entry.path().to_path_buf());
            }
        }
    } else {
        println!("Usage: codemod <dirPath>");
    }
}

fn modify_file(file_path: PathBuf) {
    let contents = fs::read_to_string(&file_path);
    if let Err(_) = contents {
        println!("Could not read the file {:?}", file_path);
        return;
    }
    let root = rnix::Root::parse(&contents.unwrap()).ok();

    if let Err(err) = &root {
        println!(
            "{}",
            format!(
                "failed to parse input of file: {:?} \n\ngot error: {}",
                file_path,
                err.to_string()
            )
        );
        return;
    }

    let syntax = root.unwrap().syntax().clone_for_update();
    let mut maybe_replaced = replace_first_comment(&syntax);
    let mut count = 0;
    let r: Option<SyntaxNode> = loop {
        if let Some(replaced) = maybe_replaced {
            // Maybe we can replace more
            count += 1;
            let result = replace_first_comment(&replaced);

            // If we cannot replace more comments
            if result.is_none() {
                break Some(replaced);
            }
            maybe_replaced = result;
        } else {
            break None;
        }
    };

    let display_name = file_path.to_str().unwrap();
    if let Some(updates) = r {
        let mut file = File::create(&file_path).unwrap();
        file.write_all(updates.text().to_string().as_bytes()).ok();
        println!("{display_name} - Changed {count} comments");
    } else {
        println!("{display_name} - Doing nothing.");
    }
}
