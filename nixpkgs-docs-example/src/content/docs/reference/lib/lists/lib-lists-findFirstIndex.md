---
title: lib.lists.findFirstIndex
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L287C5
description: lib.lists.findFirstIndex
sidebar:

    order: 7
---

Find the first index in the list matching the specified
predicate or return `default` if no such element exists.

# Example

```nix
findFirstIndex (x: x > 3) null [ 0 6 4 ]
=> 1
findFirstIndex (x: x > 9) null [ 0 6 4 ]
=> null
```

# Type

```
findFirstIndex :: (a -> Bool) -> b -> [a] -> (Int | b)
```



