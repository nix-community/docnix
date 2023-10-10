---
title: lib.lists.commonPrefix
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/lists.nix#L972C5
description: lib.lists.commonPrefix
sidebar:

    order: 7
---

The common prefix of two lists.

# Example

```nix
commonPrefix [ 1 2 3 4 5 6 ] [ 1 2 4 8 ]
=> [ 1 2 ]
commonPrefix [ 1 2 3 ] [ 1 2 3 4 5 ]
=> [ 1 2 3 ]
commonPrefix [ 1 2 3 ] [ 4 5 6 ]
=> [ ]
```

# Type

```
commonPrefix :: [a] -> [a] -> [a]
```



