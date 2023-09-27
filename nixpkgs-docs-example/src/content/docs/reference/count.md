---
title: lib.count
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L420C5
description: count
---

Count how many elements of `list` match the supplied predicate
function.

# Example

```nix
count (x: x == 3) [ 3 2 3 4 6 ]
=> 2
```

# Type

```haskell
count :: (a -> bool) -> [a] -> int
```
