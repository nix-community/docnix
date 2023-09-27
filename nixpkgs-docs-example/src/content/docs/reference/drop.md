---
title: lib.drop
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L864C5
description: drop
---

Remove the first (at most) N elements of a list.

# Example

```nix
drop 2 [ "a" "b" "c" "d" ]
=> [ "c" "d" ]
drop 2 [ ]
=> [ ]
```

# Type

```haskell
drop :: int -> [a] -> [a]
```
