---
title: lib.lists.last
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L1003C10
description: lib.lists.last
sidebar:

    order: 7
---

Return the last element of a list.

This function throws an error if the list is empty.

# Example

```nix
last [ 1 2 3 ]
=> 3
```

# Type

```haskell
last :: [a] -> a
```


# Aliases

- [lib.last](/reference/liblast)


