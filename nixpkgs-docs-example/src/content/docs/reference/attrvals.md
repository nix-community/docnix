---
title: lib.attrVals
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/attrsets.nix#L296C5
description: attrVals
---

Return the specified attributes from a set.

# Example

```nix
attrVals ["a" "b" "c"] as
=> [as.a as.b as.c]
```

# Type

```haskell
attrVals :: [String] -> AttrSet -> [Any]
```
