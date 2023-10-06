---
title: lib.lists.count
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L420C5
description: lib.lists.count
sidebar:

    order: 7
---

Count how many elements of `list` match the supplied predicate
function.

# Example

```nix
count (x: x == 3) [ 3 2 3 4 6 ]
=> 2
```

# Type

```
count :: (a -> bool) -> [a] -> int
```


# Aliases

- [lib.count](/nix-doc-comments/reference/lib/lib-count)


