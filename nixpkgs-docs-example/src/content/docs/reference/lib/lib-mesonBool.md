---
title: lib.mesonBool
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L1099C15
description: lib.mesonBool
sidebar:

    order: 8
---

Create a -D<condition>={true,false} string that can be passed to typical
Meson invocations.

# Example

```nix
mesonBool "hardened" true
=> "-Dhardened=true"
mesonBool "static" false
=> "-Dstatic=false"
```

# Type

```
mesonBool :: string -> bool -> string

@param condition The condition to be made true or false
@param flag The controlling flag of the condition
```


# Aliases

- [lib.strings.mesonBool](/nix-doc-comments/reference/lib/strings/lib-strings-mesonbool)


