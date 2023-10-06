---
title: lib.trivial.boolToString
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L162C18
description: lib.trivial.boolToString
sidebar:

    order: 7
---

Convert a boolean to a string.

This function uses the strings "true" and "false" to represent
boolean values. Calling `toString` on a bool instead returns "1"
and "" (sic!).

# Type

```
boolToString :: bool -> string
```


# Aliases

- [lib.boolToString](/nix-doc-comments/reference/lib/lib-booltostring)


