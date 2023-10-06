---
title: pkgs.makeOverridable
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L74C21
description: pkgs.makeOverridable
sidebar:

    order: 8
---

`makeOverridable` takes a function from attribute set to attribute set and
injects `override` attribute which can be used to override arguments of
the function.

nix-repl> x = {a, b}: { result = a + b; }

nix-repl> y = lib.makeOverridable x { a = 1; b = 2; }

nix-repl> y
{ override = «lambda»; overrideDerivation = «lambda»; result = 3; }

nix-repl> y.override { a = 10; }
{ override = «lambda»; overrideDerivation = «lambda»; result = 12; }

Please refer to "Nixpkgs Contributors Guide" section
"<pkg>.overrideDerivation" to learn about `overrideDerivation` and caveats
related to its use.


# Aliases

- [lib.customisation.makeOverridable](/nix-doc-comments/reference/lib/customisation/lib-customisation-makeoverridable)
- [lib.makeOverridable](/nix-doc-comments/reference/lib/lib-makeoverridable)


