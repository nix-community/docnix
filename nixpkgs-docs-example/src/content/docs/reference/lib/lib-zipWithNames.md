---
title: lib.zipWithNames
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L879C5
description: lib.zipWithNames
sidebar:

    order: 8
---

Merge sets of attributes and use the function `f` to merge attributes
values.

# Example

```nix
zipAttrsWithNames ["a"] (name: vs: vs) [{a = "x";} {a = "y"; b = "z";}]
=> { a = ["x" "y"]; }
```

# Type

```
zipAttrsWithNames :: [ String ] -> (String -> [ Any ] -> Any) -> [ AttrSet ] -> AttrSet
```


# Aliases

- [lib.attrsets.zipAttrsWithNames](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-zipattrswithnames)
- [lib.attrsets.zipWithNames](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-zipwithnames)
- [lib.zipAttrsWithNames](/nix-doc-comments/reference/lib/lib-zipattrswithnames)


