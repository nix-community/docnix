---
title: lib.attrsets.filterAttrsRecursive
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/attrsets.nix#L409C5
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

```
filterAttrsRecursive :: (String -> Any -> Bool) -> AttrSet -> AttrSet
```


# Aliases

- [lib.filterAttrsRecursive](/nix-doc-comments/reference/lib/lib-filterattrsrecursive)


