# Examples of how to use doc-comments

This contains a detailed user guide for writing **doc-comments** according to [NixOS/rfc145](https://github.com/NixOS/rfcs/pull/145)

## Abstract

### Why Doc-Comments Matter in Nix Development

Doc-comments in Nix, a purely functional programming language, are like helpful notes added to code.
These notes explain what different parts of the code do.
They're super useful because they make code easier to understand.
When developers work together, these comments help everyone stay on the same page.

**The vision of RFC145 is to enable tools** that can turn these comments into guides or manuals without extra work

In short, doc-comments make Nix coding smoother and teamwork better.

## The Basics

The following section will introduce the outlining rules for using doc comments and introduce the new builtin functionalities.

### For the Content

**Rule 1: Use multiline comments starting with `/**` to start a doc comment**.

**Rule 2: Plain text or Markdown** (see [CommonMark specification](https://spec.commonmark.org/0.30/))

### Placements

Nix looks **DIRECTLY BEFORE** the expression, only whitespaces (\s) in between the expression position and the doc-comment.

> TIP 🔥 Use `nix repl` and play with our `unsafeGetAttrDoc` to find out which placements are valid if you are unsure.
>
> NOTE: Nix could decide to not introduce new builtins, and instead introduce this as CLI feature.
>

For up-to-date placement rules please refer to [RFC-145]()
## Doc-Comments Codemod

For migration of existing nixpkgs comments - Having this automatic codemod is super helpful.

It should do the following things:

- Change multiline comments `/* */` to `/** */`
- Change `Example:` to `# Example`.
- Ensure there are two newlines after each heading.
- Parse the content of `Example` and `Type` then surround them with codeblocks ```.
- Re-indent the content such that the content is indented by 2 more spaces and aligns with the opening/closing tags `/** */`.
