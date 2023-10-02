---
title: lib.attrsets.hasAttrByPath
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/attrsets.nix#L71C5
description: lib.attrsets.hasAttrByPath
sidebar:

    order: 7
---

Return if an attribute from nested attribute set exists.

# Example

```nix
x = { a = { b = 3; }; }
hasAttrByPath ["a" "b"] x
=> true
hasAttrByPath ["z" "z"] x
=> false
```

# Type

```haskell
hasAttrByPath :: [String] -> AttrSet -> Bool
```


# Aliases

- [lib.hasAttrByPath](reference/lib/lib-hasAttrByPath)


