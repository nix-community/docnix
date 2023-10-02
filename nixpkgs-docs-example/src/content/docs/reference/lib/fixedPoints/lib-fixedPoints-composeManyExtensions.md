---
title: lib.fixedPoints.composeManyExtensions
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L77C20
description: lib.fixedPoints.composeManyExtensions
sidebar:

    order: 7
---

“right fold” a binary function `op` between successive elements of
`list` with `nul` as the starting value, i.e.,
`foldr op nul [x_1 x_2 ... x_n] == op x_1 (op x_2 ... (op x_n nul))`.

# Example

```nix
concat = foldr (a: b: a + b) "z"
concat [ "a" "b" "c" ]
=> "abcz"
# different types
strange = foldr (int: str: toString (int + 1) + str) "a"
strange [ 1 2 3 4 ]
=> "2345a"
```

# Type

```haskell
foldr :: (a -> b -> b) -> b -> [a] -> b
```


# Aliases

- [lib.composemanyextensions](/nix-doc-comments/reference/lib/lib-composemanyextensions)


