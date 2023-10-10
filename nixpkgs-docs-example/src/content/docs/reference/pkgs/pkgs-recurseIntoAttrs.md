---
title: pkgs.recurseIntoAttrs
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/attrsets.nix#L1302C5
description: pkgs.recurseIntoAttrs
sidebar:

    order: 8
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

- [lib.attrsets.recurseIntoAttrs](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-recurseintoattrs)
- [lib.recurseIntoAttrs](/nix-doc-comments/reference/lib/lib-recurseintoattrs)


