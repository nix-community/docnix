---
title: lib.mesonEnable
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L1126C17
description: lib.mesonEnable
sidebar:

    order: 8
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

- [lib.strings.mesonEnable](/nix-doc-comments/reference/lib/strings/lib-strings-mesonEnable)


