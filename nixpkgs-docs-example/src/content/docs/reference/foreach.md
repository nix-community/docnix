---
title: lib.forEach
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L52C13
description: forEach
---

Apply the function to each element in the list. Same as `map`, but arguments
flipped.

# Example

```nix
forEach [ 1 2 ] (x:
toString x
)
=> [ "1" "2" ]
```

# Type

```haskell
forEach :: [a] -> (a -> b) -> [b]
```
