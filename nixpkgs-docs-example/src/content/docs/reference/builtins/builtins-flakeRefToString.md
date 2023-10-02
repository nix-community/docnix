---
title: builtins.flakeRefToString
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: builtins.flakeRefToString
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 0
---

Convert a flake reference from attribute set format to URL format.

For example:
```nix
builtins.flakeRefToString {
  dir = "lib"; owner = "NixOS"; ref = "23.05"; repo = "nixpkgs"; type = "github";
}
```
evaluates to
```nix
"github:NixOS/nixpkgs/23.05?dir=lib"
```



