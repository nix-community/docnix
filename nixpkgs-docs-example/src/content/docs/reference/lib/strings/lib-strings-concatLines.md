---
title: lib.strings.concatLines
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L78C25
description: lib.strings.concatLines
sidebar:

    order: 7
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

- [lib.concatLines](/nix-doc-comments/reference/lib/lib-concatLines)


