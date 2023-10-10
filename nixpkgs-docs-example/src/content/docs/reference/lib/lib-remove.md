---
title: lib.remove
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/lists.nix#L228C5
description: lib.remove
sidebar:

    order: 8
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

- [lib.lists.remove](/nix-doc-comments/reference/lib/lists/lib-lists-remove)


