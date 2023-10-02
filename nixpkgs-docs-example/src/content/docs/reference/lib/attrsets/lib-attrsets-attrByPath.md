---
title: lib.attrsets.attrByPath
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/attrsets.nix#L38C5
description: lib.attrsets.attrByPath
sidebar:

    order: 7
---

Return an attribute from nested attribute sets.

# Example

```nix
x = { a = { b = 3; }; }
# ["a" "b"] is equivalent to x.a.b
# 6 is a default value to return if the path does not exist in attrset
attrByPath ["a" "b"] 6 x
=> 3
attrByPath ["z" "z"] 6 x
=> 6
```

# Type

```haskell
attrByPath :: [String] -> Any -> AttrSet -> Any
```


# Aliases

- [lib.attrbypath](/nix-doc-comments/reference/lib/lib-attrbypath)


