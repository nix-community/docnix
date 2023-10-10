---
title: lib.init
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/lists.nix#L1025C10
description: lib.init
sidebar:

    order: 8
---

Return all elements but the last.

This function throws an error if the list is empty.

# Example

```nix
init [ 1 2 3 ]
=> [ 1 2 ]
```

# Type

```
init :: [a] -> [a]
```


# Aliases

- [lib.lists.init](/nix-doc-comments/reference/lib/lists/lib-lists-init)


