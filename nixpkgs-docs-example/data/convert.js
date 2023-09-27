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

data.forEach((docItem, idx) => {
  const title = `${docItem.name} ${
    docItem.name.endsWith("'") ? "(Prime)" : ""
  }`.trim();
  const badge = `
sidebar:
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
  const filename = title.toLowerCase().replaceAll(" ", "-");
  const content = `---
title: lib.${title}
editUrl: ${getUrl(docItem.position, docItem.isPrimop)}
description: ${docItem.name}${docItem.isPrimop ? badge : ""}
---

${
  docItem.content
    ? sanitizeMdx(docItem.content)
    : getLink(getUrl(docItem.position, docItem.isPrimop), "Contribute Now!")
}
`;
  fs.writeFile(
    `./src/content/docs/reference/${filename}.md`,
    content,
    (err) => {
      if (err) {
        console.error(err);
      }
    }
  );
});
