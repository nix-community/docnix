---
title: lib.concatMapAttrs
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/attrsets.nix#L160C20
description: lib.concatMapAttrs
sidebar:

    order: 8
---

Map each attribute in the given set and merge them into a new attribute set.

# Example

```nix
concatMapAttrs
  (name: value: {
    ${name} = value;
    ${name + value} = value;
  })
  { x = "a"; y = "b"; }
=> { x = "a"; xa = "a"; y = "b"; yb = "b"; }
```

# Type

```
concatMapAttrs :: (String -> a -> AttrSet) -> AttrSet -> AttrSet
```


# Aliases

- [lib.attrsets.concatMapAttrs](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-concatmapattrs)


