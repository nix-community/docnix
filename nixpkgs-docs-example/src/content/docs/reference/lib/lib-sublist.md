---
title: lib.sublist
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L939C5
description: lib.sublist
sidebar:

    order: 8
---

Return a list consisting of at most `count` elements of `list`,
starting at index `start`.

# Example

```nix
sublist 1 3 [ "a" "b" "c" "d" "e" ]
=> [ "b" "c" "d" ]
sublist 1 3 [ ]
=> [ ]
```

# Type

```
sublist :: int -> int -> [a] -> [a]
```


# Aliases

- [lib.lists.sublist](/nix-doc-comments/reference/lib/lists/lib-lists-sublist)


