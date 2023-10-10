---
title: lib.getAttrs
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/attrsets.nix#L340C5
description: lib.getAttrs
sidebar:

    order: 8
---

Given a set of attribute names, return the set of the corresponding
attributes from the given set.

# Example

```nix
getAttrs [ "a" "b" ] { a = 1; b = 2; c = 3; }
=> { a = 1; b = 2; }
```

# Type

```
getAttrs :: [String] -> AttrSet -> AttrSet
```


# Aliases

- [lib.attrsets.getAttrs](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-getattrs)


