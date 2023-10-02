{pkgs ? import /home/johannes/git/nixpkgs {}}: let
  inherit (pkgs) lib;

  getDocsFromSet = s: lib.filterAttrs (n: v: v != null)
    (lib.mapAttrs (n: v:
      if builtins.typeOf v == "lambda"
      then builtins.unsafeGetLambdaDoc v
      else null)
    s);

  libDocs =
    lib.filterAttrs (n: v: v != null)
    (lib.mapAttrs (n: v:
      if builtins.typeOf v == "lambda"
      then builtins.unsafeGetLambdaDoc v
      else if builtins.typeOf v == "set" then getDocsFromSet v else null)
    lib);

  nestedLibAttrs = lib.filterAttrs (n: v: builtins.typeOf v == "set") lib;
  
  libMdList = map (name: {
    inherit name;
    inherit (libDocs.${name}) content isPrimop position;
  }) (builtins.attrNames libDocs);

  dataFile = builtins.toFile "docs.json" (builtins.toJSON libMdList);

  fun = {
    inherit (pkgs) lib;
    inherit builtins;
  };
in {
  inherit libDocs libMdList dataFile nestedLibAttrs fun;
}
