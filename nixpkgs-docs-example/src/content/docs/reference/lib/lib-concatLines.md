---
title: lib.concatLines
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L78C25
description: lib.concatLines
sidebar:

    order: 8
---

Map a function over a list and concatenate the resulting strings.

# Example

```nix
concatMapStrings (x: "a" + x) ["foo" "bar"]
=> "afooabar"
```

# Type

```haskell
concatMapStrings :: (a -> string) -> [a] -> string
```


# Aliases

- [lib.strings.concatLines](/nix-doc-comments/reference/lib/strings/lib-strings-concatLines)


