---
title: lib.stringAsChars
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/strings.nix#L509C5
description: lib.stringAsChars
sidebar:

    order: 8
---

Manipulate a string character by character and replace them by
strings before concatenating the results.

# Example

```nix
stringAsChars (x: if x == "a" then "i" else x) "nax"
=> "nix"
```

# Type

```
stringAsChars :: (string -> string) -> string -> string
```


# Aliases

- [lib.strings.stringAsChars](/nix-doc-comments/reference/lib/strings/lib-strings-stringaschars)


