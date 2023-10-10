---
title: lib.mapAttrsRecursiveCond
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/attrsets.nix#L742C5
description: lib.mapAttrsRecursiveCond
sidebar:

    order: 8
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

```
mapAttrsRecursiveCond :: (AttrSet -> Bool) -> ([String] -> a -> b) -> AttrSet -> AttrSet
```


# Aliases

- [lib.attrsets.mapAttrsRecursiveCond](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-mapattrsrecursivecond)


