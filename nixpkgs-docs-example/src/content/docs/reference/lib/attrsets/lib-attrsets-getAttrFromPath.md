---
title: lib.attrsets.getAttrFromPath
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/attrsets.nix#L133C5
description: lib.attrsets.getAttrFromPath
sidebar:

    order: 7
---

Like `attrByPath`, but without a default value. If it doesn't find the
path it will throw an error.

# Example

```nix
x = { a = { b = 3; }; }
getAttrFromPath ["a" "b"] x
=> 3
getAttrFromPath ["z" "z"] x
=> error: cannot find attribute `z.z'
```

# Type

```haskell
getAttrFromPath :: [String] -> AttrSet -> Any
```


# Aliases

- [lib.getAttrFromPath](/reference/libgetAttrFromPath)

