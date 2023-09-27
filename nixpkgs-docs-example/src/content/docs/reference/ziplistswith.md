---
title: lib.zipListsWith
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L613C5
description: zipListsWith
---

Merges two lists of the same size together. If the sizes aren't the same
the merging stops at the shortest. How both lists are merged is defined
by the first argument.

# Example

```nix
zipListsWith (a: b: a + b) ["h" "l"] ["e" "o"]
=> ["he" "lo"]
```

# Type

```haskell
zipListsWith :: (a -> b -> c) -> [a] -> [b] -> [c]
```
