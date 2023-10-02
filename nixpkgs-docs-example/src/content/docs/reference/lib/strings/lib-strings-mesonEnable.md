---
title: lib.strings.mesonEnable
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L1126C17
description: lib.strings.mesonEnable
sidebar:

    order: 7
---

Create a -D<feature>={enabled,disabled} string that can be passed to
typical Meson invocations.

# Example

```nix
mesonEnable "docs" true
=> "-Ddocs=enabled"
mesonEnable "savage" false
=> "-Dsavage=disabled"
```

# Type

```haskell
mesonEnable :: string -> bool -> string

@param feature The feature to be enabled or disabled
@param flag The controlling flag
```


# Aliases

- [lib.mesonEnable](reference/lib/lib-mesonEnable)


