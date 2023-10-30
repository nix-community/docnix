{
  description = "Description for the project";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    # nixpkgs with autmatically migrated nixdoc comments
    nixpkgs-migrated.url = "github:hsjobeki/nixpkgs/migrated";

    # a POC in nix for docstrings
    nix.url = "github:hsjobeki/nix/?ref=feat/doc-comments";

    # A nice unit testing framework forked from @adisbladis
    nix-unit.url = "github:hsjobeki/nix-unit/fix/stuff";
    nix-unit.inputs.nixpkgs.follows = "nixpkgs";
    nix-unit.inputs.flake-parts.follows = "flake-parts";
    # path the custom nix version into it. So we can use it for testing
    nix-unit.inputs.nix.follows = "nix";
    dream2nix.url = "github:nix-community/dream2nix";
    crane = {
      url = "github:ipetkov/crane";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    fenix = {
      url = "github:nix-community/fenix";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.rust-analyzer-src.follows = "";
    };

    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = inputs @ {
    flake-parts,
    nixpkgs,
    crane,
    dream2nix,
    ...
  }:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = ["x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin"];
      perSystem = {
        config,
        self',
        inputs',
        pkgs,
        system,
        ...
      }: let
        ##### SITE / URL Settings ################
        # e.g. https://hsjobeki.github.io/docs
        # Used to generate a 'Sitemap'. 
        # This is an XML file that outlines all of the pages, videos, and files on the site. 
        # Search engines like Google read this file to crawl the site more efficiently. 
        # See Google’s own advice on sitemaps to learn more.
        siteUrl = "https://my-domain.org";

        ##########################
        craneLib = crane.lib.${system};
        codemodSrc = craneLib.cleanCargoSource (craneLib.path ./codemod);

        commonArgs = {
          src = codemodSrc;
        };

        cargoArtifacts = craneLib.buildDepsOnly commonArgs;

        # Build the actual crate itself, reusing the dependency
        # artifacts from above.
        codemod = craneLib.buildPackage (commonArgs
          // {
            inherit cargoArtifacts;
          });
      in {
        packages =
          {
            default = self'.packages.static-docs;
            codemod = codemod;
            nixpkgs-migrated = pkgs.stdenv.mkDerivation {
              name = "nixpkgs-migrated";
              src = nixpkgs;
              buildPhase = ''
                ${self'.packages.codemod}/bin/codemod .
                cp -r . $out
              '';
            };
            code-docs = let
              nix = inputs'.nix.packages.nix-clangStdenv;
              nixpkgs = self'.packages.nixpkgs-migrated;
            in
              pkgs.stdenv.mkDerivation {
                name = "code-docs";
                src = ./code-docs;
                nativeBuildInputs = [nix];
                buildPhase = ''
                  nix-instantiate --eval --strict --json --store $PWD \
                    mkDocs.nix --arg 'pkgs' 'import ${nixpkgs} {}' -A docs \
                    > $out
                '';
              };
            markdown = pkgs.stdenv.mkDerivation {
              name = "markdown-docs";
              src = ./json-to-md;
              nativeBuildInputs = [pkgs.nodejs_20];
              
              buildPhase = ''
                cp ${self'.packages.code-docs} data.json
                node convert.mjs
                mkdir -p $out
                cp -r ./dist/* $out
              '';
            };
          }
          // (dream2nix.lib.importPackages {
            projectRoot = ./.;
            # can be changed to ".git" or "flake.nix" to get rid of .project-root
            projectRootFile = "flake.nix";
            packagesDir = ./packages;
            packageSets.nixpkgs = pkgs;
            specialArgs = {
              md-docs = self'.packages.markdown;
            
              SITE = siteUrl;
            };
          });
        devShells = {
          default = pkgs.mkShell {
            name = "doc-comment-devshell";
            packages = [
              inputs'.nixpkgs.legacyPackages.nodejs_20
              inputs'.nix.packages.nix-clangStdenv
              inputs'.nix-unit.packages.nix-unit
            ];
            shellHook = ''
              rm -rf ./json-to-md/data.json
              cp -rf ${self'.packages.code-docs} ./json-to-md/data.json
              chmod +w ./json-to-md/data.json

              rm -rf ./packages/static-docs/src/content/docs/reference/pkgs
              rm -rf ./packages/static-docs/src/content/docs/reference/builtins
              rm -rf ./packages/static-docs/src/content/docs/reference/lib
              cp -rf ${self'.packages.markdown}/* ./packages/static-docs/src/content/docs/reference
              chmod -R +w ./packages/static-docs/src/content/docs/reference
            '';
          };
          codemod = craneLib.devShell {
            # Inherit inputs from checks.
            checks = self'.checks;
          };
        };
        checks = {
          inherit codemod;
          codemod-clippy = craneLib.cargoClippy (commonArgs
            // {
              inherit cargoArtifacts;
              cargoClippyExtraArgs = "--all-targets -- --deny warnings";
            });
          codemod-doc = craneLib.cargoDoc (commonArgs
            // {
              inherit cargoArtifacts;
            });

          # Check formatting
          codemod-fmt = craneLib.cargoFmt {
            src = codemodSrc;
          };
          # Run tests with cargo-nextest
          # Consider setting `doCheck = false` on `my-crate` if you do not want
          # the tests to run twice
          codemod-nextest = craneLib.cargoNextest (commonArgs
            // {
              inherit cargoArtifacts;
              partitions = 1;
              partitionType = "count";
            });
        };
      };
      flake = {
        # The usual flake attributes can be defined here, including system-
        # agnostic ones like nixosModule and system-enumerating ones, although
        # those are more easily expressed in perSystem.
      };
    };
}
