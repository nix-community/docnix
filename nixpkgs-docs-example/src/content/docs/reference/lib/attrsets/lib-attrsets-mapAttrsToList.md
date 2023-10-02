---
title: lib.attrsets.mapAttrsToList
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/attrsets.nix#L678C5
description: lib.attrsets.mapAttrsToList
sidebar:

    order: 7
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

- [lib.mapattrstolist](/nix-doc-comments/reference/lib/lib-mapattrstolist)


