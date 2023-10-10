---
title: lib.attrByPath
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/attrsets.nix#L38C5
description: lib.attrByPath
sidebar:

    order: 8
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

```
attrByPath :: [String] -> Any -> AttrSet -> Any
```


# Aliases

- [lib.attrsets.attrByPath](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-attrbypath)


