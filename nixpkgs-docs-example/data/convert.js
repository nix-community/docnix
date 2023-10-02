import { isPromise } from "util/types";
import data from "./data.json" assert { type: "json" };
import fs from "fs";
import path from "node:path";

console.log({ data });

/**
 *
 * @param {{column: number, file: string, line: number} | undefined} position
 * @param {boolean} primop
 * @returns {string}
 */
const getUrl = (position, primop) => {
  if (position) {
    const { file, line, column } = position;
    const [_, suffix] = file.split("nixpkgs/");
    return `https://www.github.com/nixos/nixpkgs/blob/master/${suffix}#L${line}C${column}`;
  }
  if (primop) {
    return "https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc";
  }
  return "https://www.github.com/nixos/nixpkgs/blob/master";
};

const sanitizeMdx = (content) => {
  const escapes = ["{", "}", "[", "]", "<", ">"];
  return content;
  // return escapes.reduce(
  //   (res, symbol) => res.replaceAll(symbol, `\\${symbol}`),
  //   content
  // );
};

const getLink = (href, label) => {
  return `<a href="${href}">${label}</a>`;
};

const badge = `
    badge:
        text: Builtin
        variant: note
`;

const linkCard = (href, title, description) => `
<LinkCard
    title="${title}"
    description="${description}"
    href="${href}"
/>
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
      return `- [${label}](/nix-doc-comments/reference/${subpath
        .join("/")
        .toLowerCase()}/${title.replaceAll(".", "-").toLowerCase()})`;
    })
    .join("\n");
  return res;
};

data.forEach((item, idx) => {
  const { docs, path, aliases } = item;
  const { lambdaDocs, attrDocs } = docs;
  const { position, isPrimop, countApplied, content } = lambdaDocs;
  const { content: altContent } = attrDocs;

  const name = path.join(".");

  console.log({ name, aliases });
  const title = `${name} ${name.endsWith("'") ? "(Prime)" : ""}`.trim();

  const aliasList = getAliases(aliases, path);
  const aliasContent = `
# Aliases

${aliasList}
`;

  const filename = title.toLowerCase().replaceAll(" ", "-");
  const mdContent = `---
title: ${title}
editUrl: ${getUrl(position, isPrimop)}
description: ${name}
sidebar:
${isPrimop ? badge : ""}
    order: ${path.some((p) => p === "builtins") ? 0 : 10 - path.length}
---

${
  content
    ? sanitizeMdx(content)
    : altContent
    ? altContent
    : getLink(getUrl(position, isPrimop), "Contribute Now!")
}

${aliasList ? aliasContent : ""}

`;

  const subpath = path.slice(0, -1);
  console.log({ subpath });
  fs.mkdirSync(
    `./src/content/docs/reference/${subpath.join("/")}`,
    { recursive: true },
    (err) => {
      if (err) {
        return console.error(err);
      }
      // console.log("Directory created successfully!");
    }
  );

  fs.writeFileSync(
    `./src/content/docs/reference/${subpath.join("/")}/${title.replaceAll(
      ".",
      "-"
    )}.md`,
    mdContent,
    (err) => {
      if (err) {
        console.error(err);
      }
    }
  );
});
