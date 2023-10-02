---
title: lib.lists.findFirst
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L346C5
description: lib.lists.findFirst
sidebar:

    order: 7
---

Find the first element in the list matching the specified
predicate or return `default` if no such element exists.

# Example

```nix
findFirst (x: x > 3) 7 [ 1 6 4 ]
=> 6
findFirst (x: x > 9) 7 [ 1 6 4 ]
=> 7
```

# Type

```haskell
findFirst :: (a -> bool) -> a -> [a] -> a
```


# Aliases

- [lib.findFirst](/reference/libfindFirst)


