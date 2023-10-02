---
title: lib.attrsets.filterAttrsRecursive
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/attrsets.nix#L409C5
description: lib.attrsets.filterAttrsRecursive
sidebar:

    order: 7
---

Filter an attribute set recursively by removing all attributes for
which the given predicate return false.

# Example

```nix
filterAttrsRecursive (n: v: v != null) { foo = { bar = null; }; }
=> { foo = {}; }
```

# Type

```haskell
filterAttrsRecursive :: (String -> Any -> Bool) -> AttrSet -> AttrSet
```


# Aliases

- [lib.filterAttrsRecursive](/reference/libfilterAttrsRecursive)


