---
title: lib.attrsets.setAttrByPath
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/attrsets.nix#L100C5
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

```haskell
setAttrByPath :: [String] -> Any -> AttrSet
```


# Aliases

- [lib.setattrbypath](/nix-doc-comments/reference/lib/lib-setattrbypath)


