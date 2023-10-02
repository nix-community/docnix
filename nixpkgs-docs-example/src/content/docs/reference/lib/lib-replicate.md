---
title: lib.replicate
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L531C15
description: lib.replicate
sidebar:

    order: 8
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


# Aliases

- [lib.lists.replicate](./reference/lib/lists/lib-lists-replicate)


