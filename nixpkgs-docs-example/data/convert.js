import { isPromise } from "util/types";
import data from "./data.json" assert { type: "json" };
import fs from "fs";

console.log({ data });

/**
 *
 * @param {{column: number, file: string, line: number}} position
 * @returns {string}
 */
const getUrl = (position, primop) => {
  //   position.file.replace(/nix-store/);
  return primop
    ? "https://www.github.com/nixos/nix"
    : "https://www.github.com/nixos/nixpkgs";
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
  const linkCard = (href) => `
<LinkCard
    title="Contribute Now!"
    description="API Documentation is done in our source code"
    href="${href}"
/>
`;
  const filename = title.toLowerCase().replaceAll(" ", "-");
  const content = `---
title: lib.${title}
description: ${docItem.name}${docItem.isPrimop ? badge : ""}
---

import { LinkCard, CardGrid } from '@astrojs/starlight/components';

${
  docItem.content
    ? docItem.content
    : linkCard(getUrl(docItem.position, docItem.isPrimop))
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
