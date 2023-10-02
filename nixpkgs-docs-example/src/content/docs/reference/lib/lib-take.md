---
title: lib.take
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L842C5
description: lib.take
sidebar:

    order: 8
---

Return the first (at most) N elements of a list.

# Example

```nix
take 2 [ "a" "b" "c" "d" ]
=> [ "a" "b" ]
take 2 [ ]
=> [ ]
```

# Type

```haskell
take :: int -> [a] -> [a]
```


# Aliases

- [lib.lists.take](./reference/lib/lists/lib-lists-take)


