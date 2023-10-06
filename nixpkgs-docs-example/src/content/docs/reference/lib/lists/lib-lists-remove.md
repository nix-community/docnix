---
title: lib.lists.remove
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L228C5
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

```
remove :: a -> [a] -> [a]
```


# Aliases

- [lib.remove](/nix-doc-comments/reference/lib/lib-remove)


