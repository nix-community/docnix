{
  lib,
  config,
  dream2nix,
  specialArgs,
  ...
}: {
  imports = [
    dream2nix.modules.dream2nix.nodejs-package-lock-v3
    dream2nix.modules.dream2nix.nodejs-granular-v3
  ];

  mkDerivation = {
    src = ./.;
  };

  deps = {nixpkgs, ...}: {
    inherit
      (nixpkgs)
      stdenv
      ;
  };

  nodejs-package-lock-v3 = {
    packageLockFile = "${config.mkDerivation.src}/package-lock.json";
  };
  env = {
    inherit (specialArgs) SITE PREFIX;
  };

  nodejs-granular.deps.sharp."0.32.6".env.buildPhaseNodejs = lib.mkForce "true";

  name = "docs-static";
  version = "1.0.0";

  mkDerivation.postConfigure = ''
    npm run astro telemetry disable
    mkdir -p ./src/content/docs/reference
    cp -r ${specialArgs.md-docs}/* ./src/content/docs/reference
    export PATH=/build/package/.bin:$PATH
  '';
}
