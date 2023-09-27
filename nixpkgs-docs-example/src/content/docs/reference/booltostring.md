---
title: lib.boolToString
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/trivial.nix#L162C18
description: boolToString
---

Convert a boolean to a string.

This function uses the strings "true" and "false" to represent
boolean values. Calling `toString` on a bool instead returns "1"
and "" (sic!).

# Type

```haskell
boolToString :: bool -> string
```
