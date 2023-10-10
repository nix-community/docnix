---
title: lib.attrsets.setAttrByPath
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/attrsets.nix#L100C5
description: lib.attrsets.setAttrByPath
sidebar:

    order: 7
---

Create a new attribute set with `value` set at the nested attribute location specified in `attrPath`.

# Example

```nix
setAttrByPath ["a" "b"] 3
=> { a = { b = 3; }; }
```

# Type

```
setAttrByPath :: [String] -> Any -> AttrSet
```


# Aliases

- [lib.setAttrByPath](/nix-doc-comments/reference/lib/lib-setattrbypath)


