{
  description = "Description for the project";

  inputs = {
    nixpkgs.url = "github:hsjobeki/nixpkgs/nix";

    nix-unit.url = "github:hsjobeki/nix-unit/fix/stuff";
    nix-unit.inputs.nixpkgs.follows = "nixpkgs";
    nix-unit.inputs.flake-parts.follows = "flake-parts";
    nix-unit.inputs.nix.follows = "nix";

    nix.url = "github:hsjobeki/nix/lambda-docstring";
  };

  outputs = inputs @ {flake-parts, nixpkgs, ...}:
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
      }: {
        # Per-system attributes can be defined here. The self' and inputs'
        # module parameters provide easy access to attributes of the same
        # system.

        # Equivalent to  inputs'.nixpkgs.legacyPackages.hello;
        packages.default = pkgs.hello;
        packages.docs = import ./docs.nix { pkgs = import nixpkgs { currentSystem = system; }; };
        devShells = {
          default = pkgs.mkShell {
            name = "doc-comment-devshell";
            packages = [
              inputs'.nixpkgs.legacyPackages.nodejs_20
              inputs'.nix.packages.nix
              inputs'.nix-unit.packages.nix-unit
            ];
          };
        };
      };
      flake = {
        # The usual flake attributes can be defined here, including system-
        # agnostic ones like nixosModule and system-enumerating ones, although
        # those are more easily expressed in perSystem.
      };
    };
}
