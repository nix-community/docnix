let
  getAttrDoc = builtins.unsafeGetAttrDoc;
  getLambdaDoc = builtins.unsafeGetLambdaDoc;
  attrTests = import ./attr.nix {inherit getAttrDoc;};
  lambdaTests = import ./lambda.nix {inherit getAttrDoc getLambdaDoc;};
in
  attrTests // lambdaTests
