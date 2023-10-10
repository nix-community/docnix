---
title: lib.boolToString
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/trivial.nix#L162C18
description: lib.boolToString
sidebar:

    order: 8
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

- [lib.trivial.boolToString](/nix-doc-comments/reference/lib/trivial/lib-trivial-booltostring)


