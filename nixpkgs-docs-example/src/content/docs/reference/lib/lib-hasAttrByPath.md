---
title: lib.hasAttrByPath
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L71C5
description: lib.hasAttrByPath
sidebar:

    order: 8
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

```
hasAttrByPath :: [String] -> AttrSet -> Bool
```


# Aliases

- [lib.attrsets.hasAttrByPath](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-hasattrbypath)


