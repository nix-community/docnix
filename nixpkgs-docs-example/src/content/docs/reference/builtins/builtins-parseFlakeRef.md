---
title: builtins.parseFlakeRef
editUrl: false
description: builtins.parseFlakeRef
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 0
---

Parse a flake reference, and return its exploded form.

For example:
```nix
builtins.parseFlakeRef "github:NixOS/nixpkgs/23.05?dir=lib"
```
evaluates to:
```nix
{ dir = "lib"; owner = "NixOS"; ref = "23.05"; repo = "nixpkgs"; type = "github"; }
```



