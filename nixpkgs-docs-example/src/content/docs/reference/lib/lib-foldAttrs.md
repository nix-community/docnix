---
title: lib.foldAttrs
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/attrsets.nix#L508C5
description: lib.foldAttrs
sidebar:

    order: 8
---

Apply fold functions to values grouped by key.

# Example

```nix
foldAttrs (item: acc: [item] ++ acc) [] [{ a = 2; } { a = 3; }]
=> { a = [ 2 3 ]; }
```

# Type

```haskell
foldAttrs :: (Any -> Any -> Any) -> Any -> [AttrSets] -> Any
```


# Aliases

- [lib.attrsets.foldAttrs](./reference/lib/attrsets/lib-attrsets-foldAttrs)


