---
title: lib.attrsets.concatMapAttrs
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/attrsets.nix#L160C20
description: lib.attrsets.concatMapAttrs
sidebar:

    order: 7
---

Map each attribute in the given set and merge them into a new attribute set.

# Example

```nix
concatMapAttrs
(name: value: {
${name} = value;
${name + value} = value;
})
{ x = "a"; y = "b"; }
=> { x = "a"; xa = "a"; y = "b"; yb = "b"; }
```

# Type

```haskell
concatMapAttrs :: (String -> a -> AttrSet) -> AttrSet -> AttrSet
```


# Aliases

- [lib.concatMapAttrs](reference/lib/lib-concatMapAttrs)


