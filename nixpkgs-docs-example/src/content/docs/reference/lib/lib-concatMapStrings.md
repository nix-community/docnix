---
title: lib.concatMapStrings
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L78C22
description: lib.concatMapStrings
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

- [lib.strings.concatMapStrings](/nix-doc-comments/reference/lib/strings/lib-strings-concatMapStrings)


