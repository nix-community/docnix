---
title: lib.attrsets.zipAttrsWithNames
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/attrsets.nix#L879C5
description: lib.attrsets.zipAttrsWithNames
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

- [lib.attrsets.zipWithNames](/reference/libattrsets.zipWithNames)
- [lib.zipAttrsWithNames](/reference/libzipAttrsWithNames)
- [lib.zipWithNames](/reference/libzipWithNames)


