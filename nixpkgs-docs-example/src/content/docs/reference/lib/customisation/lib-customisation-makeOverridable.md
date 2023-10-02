---
title: lib.customisation.makeOverridable
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/customisation.nix#L74C21
description: lib.customisation.makeOverridable
sidebar:

    order: 7
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

- [lib.makeoverridable](/nix-doc-comments/reference/lib/lib-makeoverridable)
- [pkgs.makeoverridable](/nix-doc-comments/reference/pkgs/pkgs-makeoverridable)


