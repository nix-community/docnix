---
title: lib.lists.removePrefix
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L911C5
description: lib.lists.removePrefix
sidebar:

    order: 7
---

Remove the first list as a prefix from the second list.
Error if the first list isn't a prefix of the second list.

# Example

```nix
removePrefix [ 1 2 ] [ 1 2 3 4 ]
=> [ 3 4 ]
removePrefix [ 0 1 ] [ 1 2 3 4 ]
=> <error>
```

# Type

```haskell
removePrefix :: [a] -> [a] -> [a]
```



