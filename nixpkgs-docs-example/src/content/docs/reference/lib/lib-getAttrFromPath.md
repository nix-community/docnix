---
title: lib.getAttrFromPath
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/attrsets.nix#L133C5
description: lib.getAttrFromPath
sidebar:

    order: 8
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

- [lib.attrsets.getAttrFromPath](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-getattrfrompath)


