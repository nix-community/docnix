---
title: lib.lists.take
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L842C5
description: lib.lists.take
sidebar:

    order: 7
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

- [lib.take](./reference/lib/lib-take)


