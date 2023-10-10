---
title: lib.assertOneOf
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/asserts.nix#L56C5
description: lib.assertOneOf
sidebar:

    order: 8
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

```
assertOneOf :: String -> ComparableVal -> List ComparableVal -> Bool
```


# Aliases

- [lib.asserts.assertOneOf](/nix-doc-comments/reference/lib/asserts/lib-asserts-assertoneof)


