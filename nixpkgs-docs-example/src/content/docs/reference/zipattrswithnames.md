---
title: lib.zipAttrsWithNames
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/attrsets.nix#L879C5
description: zipAttrsWithNames
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
