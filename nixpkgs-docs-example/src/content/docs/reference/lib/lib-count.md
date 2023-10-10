---
title: lib.count
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/lists.nix#L420C5
description: lib.count
sidebar:

    order: 8
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

- [lib.lists.count](/nix-doc-comments/reference/lib/lists/lib-lists-count)


