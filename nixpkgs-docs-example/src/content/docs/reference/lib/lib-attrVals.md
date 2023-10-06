---
title: lib.attrVals
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L296C5
description: lib.attrVals
sidebar:

    order: 8
---

Return the specified attributes from a set.

# Example

```nix
attrVals ["a" "b" "c"] as
=> [as.a as.b as.c]
```

# Type

```
attrVals :: [String] -> AttrSet -> [Any]
```


# Aliases

- [lib.attrsets.attrVals](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-attrvals)


