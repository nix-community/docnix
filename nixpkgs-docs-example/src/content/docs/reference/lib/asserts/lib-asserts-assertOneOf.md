---
title: lib.asserts.assertOneOf
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/asserts.nix#L56C5
description: lib.asserts.assertOneOf
sidebar:

    order: 7
---

Specialized `assertMsg` for checking if `val` is one of the elements
of the list `xs`. Useful for checking enums.

# Example

```nix
let sslLibrary = "libressl";
in assertOneOf "sslLibrary" sslLibrary [ "openssl" "bearssl" ]
stderr> error: sslLibrary must be one of [
stderr>   "openssl"
stderr>   "bearssl"
stderr> ], but is: "libressl"
```

# Type

```haskell
assertOneOf :: String -> ComparableVal -> List ComparableVal -> Bool
```


# Aliases

- [lib.assertOneOf](/nix-doc-comments/reference/lib/lib-assertOneOf)


