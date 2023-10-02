---
title: lib.last
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L1003C10
description: lib.last
sidebar:

    order: 8
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

- [lib.lists.last](./reference/lib/lists/lib-lists-last)


