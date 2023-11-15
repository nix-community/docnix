import fs from "fs";
import data from "./data.json" assert { type: "json" };

const { PREFIX = undefined } = process.env;

console.log({ PREFIX });
/**
 *
 * @param {{column: number, file: string, line: number} | undefined} position
 * @param {boolean} primop
 * @returns {string}
 */
const getUrl = (position, primop) => {
  const repo =
    "https://www.github.com/hsjobeki/nixpkgs/tree/migrate-doc-comments/";

  // const repo = primop
  //   ? "https://www.github.com/nixos/nix/blob/master/src"
  //   : "https://www.github.com/nixos/nixpkgs/blob/master/";

  if (position && !primop) {
    const { file, line, column } = position;
    let suffix = file;
    if (file.startsWith("/nix/store")) {
      suffix = file.split("/").slice(4).join("/");
    }
    return `${repo}${suffix}#L${line}C${column}`;
  } else {
    return false;
  }
};

const getLink = (href, label) => {
  if (href) return `<a href="${href}">${label}</a>`;
  return label;
};

const badge = `
    badge:
        text: Builtin
        variant: note
`;

/**
 * @param {[[string]]} aliases
 */
const getAliases = (aliases, path) => {
  const res = aliases
    .filter((p) => !p.every((subpath, idx) => path[idx] === subpath))
    .sort()
    .map((ps) => {
      const subpath = ps.slice(0, -1);
      const name = ps.join(".");
      const title = `${name} ${name.endsWith("'") ? "(Prime)" : ""}`.trim();
      const label = ps.join(".");
      const target = [
        PREFIX,
        "reference",
        subpath.join("/"),
        title.replaceAll(".", "-"),
      ]
        .filter(Boolean)
        .join("/")
        .toLowerCase();
      return `- [${label}](/${target})`;
    })
    .join("\n");
  return res;
};

/**
 *
 * @param {typeof data[number]} item
 * @param {typeof data} all
 * @returns {{docs: string, position: null | {column: number; file: string; line: number;}}}
 */
const getContent = (item, all) => {
  const { aliases, path, docs } = item;
  const {
    attrDocs: { content: attrContent },
    lambdaDocs,
  } = docs;

  let final = attrDocs;
  if (!attrContent) {
    const others = all.filter(
      (other) =>
        aliases.some((a) => a.join(".") === other.path.join(".")) &&
        other.path.join(".") != path.join(".")
    );
    const aliasItemWithDocs = others.find((item) =>
      Boolean(item.docs.attrDocs.content)
    );
    if (aliasItemWithDocs) {
      final = aliasItemWithDocs.docs.attrDocs;
    } else {
      final = lambdaDocs;
    }
  }
  return {
    docs: final.content,
    position: final.position,
  };
};

data.forEach((item, idx) => {
  const {
    docs: { lambdaDocs, attrDocs },
    path,
    aliases,
  } = item;

  const { isPrimop, countApplied } = lambdaDocs;
  const { content: altContent } = attrDocs;

  const { docs, position } = getContent(item, data);

  const name = path.join(".");

  console.log({ name, aliases });
  const title = `${name} ${name.endsWith("'") ? "(Prime)" : ""}`.trim();

  const aliasList = getAliases(aliases, path);
  const aliasContent = `
  # Aliases
  
  ${aliasList}
  `;

  const mdContent = `---
title: ${title}
editUrl: ${getUrl(position, isPrimop || title.startsWith("builtins."))}
description: ${name}
sidebar:
${isPrimop ? badge : ""}
    order: ${path.some((p) => p === "builtins") ? 0 : 10 - path.length}
---

${
  docs ||
  getLink(
    getUrl(position, isPrimop || title.startsWith("builtins.")),
    "Contribute Now!"
  )
}

${aliasList ? aliasContent : ""}


defined in: ${getLink(
    getUrl(position, isPrimop || title.startsWith("builtins.")),
    `${position.file}#{}`
  )}
`;

  const subpath = path.slice(0, -1);
  console.log({ subpath });
  fs.mkdirSync(`./dist/${subpath.join("/")}`, { recursive: true }, (err) => {
    if (err) {
      return console.error(err);
    }
  });

  fs.writeFileSync(
    `./dist/${subpath.join("/")}/${title.replaceAll(".", "-")}.md`,
    mdContent,
    (err) => {
      if (err) {
        console.error(err);
      }
    }
  );
});
