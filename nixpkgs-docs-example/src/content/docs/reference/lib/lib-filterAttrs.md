---
title: lib.filterAttrs
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/attrsets.nix#L384C5
description: lib.filterAttrs
sidebar:

    order: 8
---

Filter an attribute set by removing all attributes for which the
given predicate return false.

# Example

```nix
filterAttrs (n: v: n == "foo") { foo = 1; bar = 2; }
=> { foo = 1; }
```

# Type

```haskell
filterAttrs :: (String -> Any -> Bool) -> AttrSet -> AttrSet
```


# Aliases

- [lib.attrsets.filterAttrs](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-filterAttrs)


