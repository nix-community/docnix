{ 
  pkgs ? import /home/johannes/git/nixpkgs {}
}: 
let
  inherit (pkgs) lib;
  libDocs = lib.filterAttrs (n: v: v != null) (lib.mapAttrs (n: v: if builtins.typeOf v == "lambda" then builtins.unsafeGetLambdaDoc v else null) lib);
  nestedLibAttrs = lib.filterAttrs (n: v: builtins.typeOf v == "set" ) lib;
  libMdList = map (name: {
    inherit name;
    inherit (libDocs.${name}) content isPrimop position;
  }) (builtins.attrNames libDocs);
  dataFile = builtins.toFile "docs.json" (builtins.toJSON libMdList);
in
{
  inherit libDocs libMdList dataFile nestedLibAttrs;
}