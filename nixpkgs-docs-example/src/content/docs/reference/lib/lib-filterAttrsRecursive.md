---
title: lib.filterAttrsRecursive
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/attrsets.nix#L409C5
description: lib.filterAttrsRecursive
sidebar:

    order: 8
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

- [lib.attrsets.filterAttrsRecursive](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-filterAttrsRecursive)


