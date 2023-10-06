---
title: lib.take
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L842C5
description: lib.take
sidebar:

    order: 8
---

Return the first (at most) N elements of a list.

# Example

```nix
take 2 [ "a" "b" "c" "d" ]
=> [ "a" "b" ]
take 2 [ ]
=> [ ]
```

# Type

```
take :: int -> [a] -> [a]
```


# Aliases

- [lib.lists.take](/nix-doc-comments/reference/lib/lists/lib-lists-take)


