{
  description = "Description for the project";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    
    # nixpkgs with autmatically migrated nixdoc comments
    nixpkgs-migrated.url = "github:hsjobeki/nixpkgs/migrated";
    
    # a POC in nix for docstrings
    nix.url = "github:hsjobeki/nix/lambda-docstring";

    # A nice unit testing framework forked from @adisbladis
    nix-unit.url = "github:hsjobeki/nix-unit/fix/stuff";
    nix-unit.inputs.nixpkgs.follows = "nixpkgs";
    nix-unit.inputs.flake-parts.follows = "flake-parts";
    # path the custom nix version into it. So we can use it for testing
    nix-unit.inputs.nix.follows = "nix";

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

  outputs = inputs @ {flake-parts, nixpkgs, crane, ...}:
    flake-parts.lib.mkFlake {inherit inputs;} {
      imports = [
        # To import a flake module
        # 1. Add foo to inputs
        # 2. Add foo as a parameter to the outputs function
        # 3. Add here: foo.flakeModule
      ];
      systems = ["x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin"];
      perSystem = {
        config,
        self',
        inputs',
        pkgs,
        system,
        ...
      }: 
      let
        craneLib = crane.lib.${system};
        codemodSrc = craneLib.cleanCargoSource (craneLib.path ./codemod);

         commonArgs = {
          src=codemodSrc;

          buildInputs = [
            # Add additional build inputs here
          ];

          # Additional environment variables can be set directly
          # MY_CUSTOM_VAR = "some value";
        };

        cargoArtifacts = craneLib.buildDepsOnly commonArgs;

        # Build the actual crate itself, reusing the dependency
        # artifacts from above.
        codemod = craneLib.buildPackage (commonArgs // {
          inherit cargoArtifacts;
        });
      in
      {
        packages= {
          default = pkgs.hello;
          codemod = codemod;
        };
        devShells = {
          default = pkgs.mkShell {
            name = "doc-comment-devshell";
            packages = [
              inputs'.nixpkgs.legacyPackages.nodejs_20
              inputs'.nix.packages.nix-clangStdenv
              inputs'.nix-unit.packages.nix-unit
            ];
          };
          codemod = craneLib.devShell {
          # Inherit inputs from checks.
          checks = self'.checks;

          # Additional dev-shell environment variables can be set directly
          # MY_CUSTOM_DEVELOPMENT_VAR = "something else";

          # Extra inputs can be added here; cargo and rustc are provided by default.
          packages = [
            # pkgs.ripgrep
          ];
        };
        };
      checks = {
          # Build the crate as part of `nix flake check` for convenience
          inherit codemod;

          # Run clippy (and deny all warnings) on the crate source,
          # again, resuing the dependency artifacts from above.
          #
          # Note that this is done as a separate derivation so that
          # we can block the CI if there are issues here, but not
          # prevent downstream consumers from building our crate by itself.
         codemod-clippy = craneLib.cargoClippy (commonArgs // {
            inherit cargoArtifacts;
            cargoClippyExtraArgs = "--all-targets -- --deny warnings";
          });

          codemod-doc = craneLib.cargoDoc (commonArgs // {
            inherit cargoArtifacts;
          });

          # Check formatting
          codemod-fmt = craneLib.cargoFmt {
            src=codemodSrc;
          };

          # Run tests with cargo-nextest
          # Consider setting `doCheck = false` on `my-crate` if you do not want
          # the tests to run twice
          codemod-nextest = craneLib.cargoNextest (commonArgs // {
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
