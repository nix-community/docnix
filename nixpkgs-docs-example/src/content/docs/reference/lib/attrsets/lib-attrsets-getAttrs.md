---
title: lib.attrsets.getAttrs
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L340C5
description: lib.attrsets.getAttrs
sidebar:

    order: 7
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

- [lib.getAttrs](/nix-doc-comments/reference/lib/lib-getattrs)


