---
title: lib.attrsets.recurseIntoAttrs
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L1302C5
description: lib.attrsets.recurseIntoAttrs
sidebar:

    order: 7
---

Make various Nix tools consider the contents of the resulting
attribute set when looking for what to build, find, etc.

This function only affects a single attribute set; it does not
apply itself recursively for nested attribute sets.

# Example

```nix
{ pkgs ? import <nixpkgs> {} }:
{
  myTools = pkgs.lib.recurseIntoAttrs {
    inherit (pkgs) hello figlet;
  };
}
```

# Type

```
recurseIntoAttrs :: AttrSet -> AttrSet
```


# Aliases

- [lib.recurseIntoAttrs](/nix-doc-comments/reference/lib/lib-recurseintoattrs)
- [pkgs.recurseIntoAttrs](/nix-doc-comments/reference/pkgs/pkgs-recurseintoattrs)


