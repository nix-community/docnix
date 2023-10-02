---
title: lib.lists.sublist
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L939C5
description: lib.lists.sublist
sidebar:

    order: 7
---

Return a list consisting of at most `count` elements of `list`,
starting at index `start`.

# Example

```nix
sublist 1 3 [ "a" "b" "c" "d" "e" ]
=> [ "b" "c" "d" ]
sublist 1 3 [ ]
=> [ ]
```

# Type

```haskell
sublist :: int -> int -> [a] -> [a]
```


# Aliases

- [lib.sublist](reference/lib/lib-sublist)


