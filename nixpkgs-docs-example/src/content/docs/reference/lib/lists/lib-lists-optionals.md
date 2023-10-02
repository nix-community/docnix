---
title: lib.lists.optionals
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L464C5
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

```haskell
optionals :: bool -> [a] -> [a]
```


# Aliases

- [lib.optionals](./reference/lib/lib-optionals)


