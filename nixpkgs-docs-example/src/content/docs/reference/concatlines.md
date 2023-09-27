---
title: lib.concatLines
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L78C25
description: concatLines
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
