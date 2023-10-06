---
title: lib.range
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L505C5
description: lib.range
sidebar:

    order: 8
---

Return a list of integers from `first` up to and including `last`.

# Example

```nix
range 2 4
=> [ 2 3 4 ]
range 3 2
=> [ ]
```

# Type

```
range :: int -> int -> [int]
```


# Aliases

- [lib.lists.range](/nix-doc-comments/reference/lib/lists/lib-lists-range)


