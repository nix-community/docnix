---
title: lib.concatMapStringsSep
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L163C5
description: concatMapStringsSep
---

Maps a function over a list of strings and then concatenates the
result with the specified separator interspersed between
elements.

# Example

```nix
concatMapStringsSep "-" (x: toUpper x)  ["foo" "bar" "baz"]
=> "FOO-BAR-BAZ"
```

# Type

```haskell
concatMapStringsSep :: string -> (a -> string) -> [a] -> string
```
