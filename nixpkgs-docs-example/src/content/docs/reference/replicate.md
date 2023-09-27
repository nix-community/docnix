---
title: lib.replicate
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L531C15
description: replicate
---

Return a list with `n` copies of an element.

# Example

```nix
replicate 3 "a"
=> [ "a" "a" "a" ]
replicate 2 true
=> [ true true ]
```

# Type

```haskell
replicate :: int -> a -> [a]
```
