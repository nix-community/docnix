---
title: lib.init
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L1025C10
description: lib.init
sidebar:

    order: 8
---

Return all elements but the last.

This function throws an error if the list is empty.

# Example

```nix
init [ 1 2 3 ]
=> [ 1 2 ]
```

# Type

```haskell
init :: [a] -> [a]
```


# Aliases

- [lib.lists.init](/reference/liblists.init)


