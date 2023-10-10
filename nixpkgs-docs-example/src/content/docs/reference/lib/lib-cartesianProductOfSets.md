---
title: lib.cartesianProductOfSets
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/attrsets.nix#L577C5
description: lib.cartesianProductOfSets
sidebar:

    order: 8
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

- [lib.attrsets.cartesianProductOfSets](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-cartesianproductofsets)


