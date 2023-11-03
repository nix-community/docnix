import starlight from "@astrojs/starlight";
import { defineConfig } from "astro/config";
import { spawn } from "node:child_process";
import { dirname, relative } from "node:path";
import { fileURLToPath } from "node:url";
const { SITE = undefined, PREFIX = undefined } = process.env;

console.log({ SITE, PREFIX });

export default defineConfig({
  site: SITE,
  base: PREFIX,
  siteMap: true,
  outDir: "public",
  publicDir: "static",
  integrations: [
    starlight({
      title: "API Reference",
      logo: {
        src: "./src/assets/nix-logo.svg",
      },
      tableOfContents: { minHeadingLevel: 1, maxHeadingLevel: 4 },

      social: {
        github: "https://github.com/nixos/nixpkgs",
      },
      editLink: {
        baseUrl: "https://github.com/nixos/nixpkgs",
      },
      sidebar: [
        {
          label: "Home",
          link: "/",
        },
        {
          label: "Reference",
          items: [
            {
              label: "Overview",
              link: "/reference",
            },
            {
              label: "lib",
              autogenerate: { directory: "reference/lib" },
              collapsed: true,
            },
            {
              label: "builtins",
              autogenerate: { directory: "reference/builtins" },
              collapsed: true,
            },
            {
              label: "pkgs",
              autogenerate: { directory: "reference/pkgs" },
              collapsed: true,
            },
          ],
          collapsed: false,
        },
        {
          label: "Further",
          autogenerate: { directory: "further" },
          collapsed: false,
        },
      ],
    }),

    {
      name: "pagefind",
      hooks: {
        "astro:build:done": ({ dir }) => {
          console.log("CUSTOM PAGEFIND");
          const targetDir = fileURLToPath(dir);
          const cwd = dirname(fileURLToPath(import.meta.url));
          const relativeDir = relative(cwd, targetDir);
          return new Promise((resolve) => {
            spawn("pagefind", ["--site", relativeDir], {
              stdio: "inherit",
              shell: true,
              cwd,
            }).on("close", () => resolve());
          });
        },
      },
    },
  ],
});
