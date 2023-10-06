---
title: lib.lists.drop
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L864C5
description: lib.lists.drop
sidebar:

    order: 7
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

```
drop :: int -> [a] -> [a]
```


# Aliases

- [lib.drop](/nix-doc-comments/reference/lib/lib-drop)


