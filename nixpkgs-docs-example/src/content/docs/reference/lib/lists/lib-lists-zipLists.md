---
title: lib.lists.zipLists
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L615C5
description: lib.lists.zipLists
sidebar:

    order: 7
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


# Aliases

- [lib.zipLists](/nix-doc-comments/reference/lib/lib-zipLists)


