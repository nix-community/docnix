---
title: lib.strings.stringAsChars
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L509C5
description: lib.strings.stringAsChars
sidebar:

    order: 7
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

- [lib.stringAsChars](/nix-doc-comments/reference/lib/lib-stringaschars)


