---
title: lib.makeOverridable
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/customisation.nix#L74C21
description: lib.makeOverridable
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
- [pkgs.makeOverridable](/nix-doc-comments/reference/pkgs/pkgs-makeoverridable)


