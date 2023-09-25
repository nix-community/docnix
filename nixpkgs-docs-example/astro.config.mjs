import { defineConfig } from "astro/config";
import starlight from "@astrojs/starlight";

// https://astro.build/config
export default defineConfig({
  site: "https://hsjobeki.github.io",
  base: "/nix-doc-comments",
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
      sidebar: [
        {
          label: "Reference",
          autogenerate: { directory: "reference" },
        },
      ],
    }),
  ],
});
