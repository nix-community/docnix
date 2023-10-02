---
title: lib.mapAttrsToList
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/attrsets.nix#L678C5
description: lib.mapAttrsToList
sidebar:

    order: 8
---

Call a function for each attribute in the given set and return
the result in a list.

# Example

```nix
mapAttrsToList (name: value: name + value)
{ x = "a"; y = "b"; }
=> [ "xa" "yb" ]
```

# Type

```haskell
mapAttrsToList :: (String -> a -> b) -> AttrSet -> [b]
```


# Aliases

- [lib.attrsets.mapAttrsToList](/reference/libattrsets.mapAttrsToList)


