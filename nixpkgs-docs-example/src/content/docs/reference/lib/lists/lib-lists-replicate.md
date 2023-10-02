---
title: lib.lists.replicate
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L531C15
description: lib.lists.replicate
sidebar:

    order: 7
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

- [lib.replicate](/nix-doc-comments/reference/lib/lib-replicate)


