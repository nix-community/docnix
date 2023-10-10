---
title: lib.lists.hasPrefix
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/lists.nix#L887C5
description: lib.lists.hasPrefix
sidebar:

    order: 7
---

Whether the first list is a prefix of the second list.

# Example

```nix
hasPrefix [ 1 2 ] [ 1 2 3 4 ]
=> true
hasPrefix [ 0 1 ] [ 1 2 3 4 ]
=> false
```

# Type

```
hasPrefix :: [a] -> [a] -> bool
```



