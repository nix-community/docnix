---
title: lib.strings.mesonOption
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L1072C17
description: lib.strings.mesonOption
sidebar:

    order: 7
---

Create a -D<feature>=<value> string that can be passed to typical Meson
invocations.

# Example

```nix
mesonOption "engine" "opengl"
=> "-Dengine=opengl"
```

# Type

```haskell
mesonOption :: string -> string -> string

@param feature The feature to be set
@param value The desired value
```


# Aliases

- [lib.mesonOption](/reference/libmesonOption)


