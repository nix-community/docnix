---
title: lib.attrsets.mapAttrsRecursiveCond
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/attrsets.nix#L742C5
description: lib.attrsets.mapAttrsRecursiveCond
sidebar:

    order: 7
---

Like `mapAttrsRecursive`, but it takes an additional predicate
function that tells it whether to recurse into an attribute
set.  If it returns false, `mapAttrsRecursiveCond` does not
recurse, but does apply the map function.  If it returns true, it
does recurse, and does not apply the map function.

# Example

```nix
# To prevent recursing into derivations (which are attribute
# sets with the attribute "type" equal to "derivation"):
mapAttrsRecursiveCond
(as: !(as ? "type" && as.type == "derivation"))
(x: ... do something ...)
attrs
```

# Type

```haskell
mapAttrsRecursiveCond :: (AttrSet -> Bool) -> ([String] -> a -> b) -> AttrSet -> AttrSet
```


# Aliases

- [lib.mapattrsrecursivecond](/nix-doc-comments/reference/lib/lib-mapattrsrecursivecond)


