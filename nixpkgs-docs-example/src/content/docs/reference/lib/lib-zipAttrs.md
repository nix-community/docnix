---
title: lib.zipAttrs
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/attrsets.nix#L936C5
description: lib.zipAttrs
sidebar:

    order: 8
---

Merge sets of attributes and combine each attribute value in to a list.

Like `lib.attrsets.zipAttrsWith` with `(name: values: values)` as the function.

# Example

```nix
zipAttrs [{a = "x";} {a = "y"; b = "z";}]
=> { a = ["x" "y"]; b = ["z"]; }
```

# Type

```haskell
zipAttrs :: [ AttrSet ] -> AttrSet
```


# Aliases

- [lib.attrsets.zipAttrs](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-zipAttrs)


