---
title: lib.attrsets.optionalAttrs
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/attrsets.nix#L854C5
description: lib.attrsets.optionalAttrs
sidebar:

    order: 7
---

If `cond` is true, return the attribute set `as`,
otherwise an empty attribute set.

# Example

```nix
optionalAttrs (true) { my = "set"; }
=> { my = "set"; }
optionalAttrs (false) { my = "set"; }
=> { }
```

# Type

```haskell
optionalAttrs :: Bool -> AttrSet -> AttrSet
```


# Aliases

- [lib.optionalAttrs](/reference/liboptionalAttrs)


