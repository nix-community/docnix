---
title: lib.lists.optionals
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L464C5
description: lib.lists.optionals
sidebar:

    order: 7
---

Return a list or an empty list, depending on a boolean value.

# Example

```nix
optionals true [ 2 3 ]
=> [ 2 3 ]
optionals false [ 2 3 ]
=> [ ]
```

# Type

```
optionals :: bool -> [a] -> [a]
```


# Aliases

- [lib.optionals](/nix-doc-comments/reference/lib/lib-optionals)


