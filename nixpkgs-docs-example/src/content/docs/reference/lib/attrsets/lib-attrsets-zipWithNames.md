---
title: lib.attrsets.zipWithNames
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/attrsets.nix#L879C5
description: lib.attrsets.zipWithNames
sidebar:

    order: 7
---

Merge sets of attributes and use the function `f` to merge attributes
values.

# Example

```nix
zipAttrsWithNames ["a"] (name: vs: vs) [{a = "x";} {a = "y"; b = "z";}]
=> { a = ["x" "y"]; }
```

# Type

```haskell
zipAttrsWithNames :: [ String ] -> (String -> [ Any ] -> Any) -> [ AttrSet ] -> AttrSet
```


# Aliases

- [lib.attrsets.zipAttrsWithNames](reference/lib/attrsets/lib-attrsets-zipAttrsWithNames)
- [lib.zipAttrsWithNames](reference/lib/lib-zipAttrsWithNames)
- [lib.zipWithNames](reference/lib/lib-zipWithNames)


