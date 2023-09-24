import { defineConfig } from "astro/config";
import starlight from "@astrojs/starlight";

// https://astro.build/config
export default defineConfig({
  site: "https://hsjobeki.github.io/nix-docs-comments",
  base: "",
  integrations: [
    starlight({
      title: "nixos/nixpkgs reference docs",
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
