---
title: lib.attrsets.getAttrFromPath
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L133C5
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

```
getAttrFromPath :: [String] -> AttrSet -> Any
```


# Aliases

- [lib.getAttrFromPath](/nix-doc-comments/reference/lib/lib-getattrfrompath)


