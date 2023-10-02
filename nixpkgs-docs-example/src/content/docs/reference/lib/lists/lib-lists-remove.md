---
title: lib.lists.remove
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L228C5
description: lib.lists.remove
sidebar:

    order: 7
---

Remove elements equal to 'e' from a list.  Useful for buildInputs.

# Example

```nix
remove 3 [ 1 3 4 3 ]
=> [ 1 4 ]
```

# Type

```haskell
remove :: a -> [a] -> [a]
```


# Aliases

- [lib.remove](reference/lib/lib-remove)


