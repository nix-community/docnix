---
title: lib.attrsets.cartesianProductOfSets
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L577C5
description: lib.attrsets.cartesianProductOfSets
sidebar:

    order: 7
---

Return the cartesian product of attribute set value combinations.

# Example

```nix
cartesianProductOfSets { a = [ 1 2 ]; b = [ 10 20 ]; }
=> [
     { a = 1; b = 10; }
     { a = 1; b = 20; }
     { a = 2; b = 10; }
     { a = 2; b = 20; }
   ]
```

# Type

```
cartesianProductOfSets :: AttrSet -> [AttrSet]
```


# Aliases

- [lib.cartesianProductOfSets](/nix-doc-comments/reference/lib/lib-cartesianproductofsets)


