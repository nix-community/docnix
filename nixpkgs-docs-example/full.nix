{
  pkgs ?
    import (builtins.fetchTree { repo = "nixpkgs"; ref="migrated"; owner="hsjobeki"; type="github"; }) {}
}: let
  
  inherit pkgs;
  inherit (pkgs) lib;

  debug = lib.debug.traceVal;

  pp = p: v: builtins.trace "${p}: ${v}" v;
  force = v: (builtins.tryEval v).value;

  getDocs = parent: name: value: let
    lambdaDocs = builtins.unsafeGetLambdaDoc value;
    attrDocs = builtins.unsafeGetAttrDoc name parent;
  in {inherit lambdaDocs attrDocs;};

  isRecursive = s: a: let
    attr = assert builtins.trace "${a}" true; force a;
    self = force s.${attr} or {};
    selfSelf = force s.${attr}.${attr} or false;

    containsItself = builtins.tryEval (self == selfSelf);
    containsItselfNested =
      builtins.elem s
      (builtins.attrValues self);
  in
    !containsItself.success || force (containsItself.value || containsItselfNested);

  badPaths = [
    "__"
    "androidndkPkgs"
    "cuda"
    "cudaPackages"
    "darwin"
    "iosSdkPkgs"
    "generateOptparseApplicativeCompletions"
    "scope"
    "ghc865Binary"
    "orizentic"
    "nixos-tests"
    "pkg-config"
    "nodePackages"
    "pkgsi686Linux"
    "pkgsMusl"
    "nixosTests"
    "pkgsLLVM"
    "pypy38Packages"
  ];
  /**
  Path :: [], Set :: {}
  */
  descend = path: set: let
    names = lib.reverseList (builtins.filter (n: n != "passthru") (builtins.attrNames set));

    result = builtins.foldl' (acc: name: let
      value = force set.${name};
      type = pp (lib.concatStringsSep "." (path ++ [name])) (builtins.typeOf value);
    in
      if type == "lambda"
      then
        acc
        ++ [
          {
            path = path ++ [name];
            docs = getDocs set name value;
          }
        ]
      else if type == "set"
      then
        if !lib.isDerivation value && !lib.isOptionType value && ! builtins.any (p: lib.hasPrefix p name) badPaths
        then
          if !isRecursive set name && builtins.length path < 2
          then acc ++ descend (debug (path ++ [name])) value
          else acc
        else acc
      else acc) []
    names;
  in
    result;

  /**
  list :: [ { docs :: { attrDocs {};  lambdaDocs :: {}; }; path :: [ string ]; } ]
  */
  addAliases = list:
    builtins.foldl' (
      res: item: let
        others =
          if item.docs.lambdaDocs.position != null
          then
            builtins.filter (
              other: other.docs.lambdaDocs.position == item.docs.lambdaDocs.position && item.docs.lambdaDocs.countApplied == 0
            )
            list
          else if item.docs.lambdaDocs.isPrimop
          # {path = ["builtins" (lib.last item.path)];}
          then (builtins.filter (
              other: other.docs.lambdaDocs.content == item.docs.lambdaDocs.content && other.docs.lambdaDocs.countApplied == item.docs.lambdaDocs.countApplied && item.docs.lambdaDocs.content != "" 
            )
            list)
          else [];
        aliases = (builtins.map (alias: alias.path) others);
      in
        res
        ++ [
          (item
            // {
              inherit aliases;
            })
        ]
    ) []
    list;

  getDocsFromBuiltins = s: 
    let docs = lib.filterAttrs (n: v: v != null) (lib.mapAttrs (n: v:
      if builtins.typeOf v == "lambda"
      then getDocs s n v
      else null)
    s);

    in builtins.foldl' (res: name: res ++ [{
        path = ["builtins" name];
        docs = docs.${name}; 
    }] ) [] (builtins.attrNames docs);

  builtinsDocs = getDocsFromBuiltins builtins;

  debugFile = thing: builtins.toFile "debug.json" (builtins.toJSON thing);

  trivials = lib.filterAttrs (v: v: builtins.typeOf (force v) == "lambda" ) pkgs;
  stdenvs = lib.filterAttrs (v: v: builtins.typeOf (force v) == "lambda" ) pkgs.stdenv;

  fun = {
    inherit (pkgs) lib;
  };
  all = descend ["lib"] pkgs.lib ++ builtinsDocs ++ descend ["pkgs"] trivials ++  descend ["pkgs" "stdenv"] stdenvs;
in {
  inherit force descend pkgs debugFile isRecursive addAliases fun getDocsFromBuiltins builtinsDocs all trivials;
}