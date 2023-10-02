---
title: lib.lists.range
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L505C5
description: lib.lists.range
sidebar:

    order: 7
---

Return a list of integers from `first` up to and including `last`.

# Example

```nix
range 2 4
=> [ 2 3 4 ]
range 3 2
=> [ ]
```

# Type

```haskell
range :: int -> int -> [int]
```


# Aliases

- [lib.range](/reference/librange)


