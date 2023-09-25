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

import { LinkCard, CardGrid } from '@astrojs/starlight/components';

${
  docItem.content
    ? docItem.content
    : linkCard(
        getUrl(docItem.position, docItem.isPrimop),
        "Contribute Now!",
        "API Documentation is done in our source code"
      )
}
`;
  fs.writeFile(
    `./src/content/docs/reference/${filename}.mdx`,
    content,
    (err) => {
      if (err) {
        console.error(err);
      }
    }
  );
});
