---
title: lib.assertOneOf
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/asserts.nix#L56C5
description: assertOneOf
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
