---
title: lib.trivial.flip
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L198C10
description: lib.trivial.flip
sidebar:

    order: 7
---

Flip the order of the arguments of a binary function.

# Example

```nix
flip concat [1] [2]
=> [ 2 1 ]
```

# Type

```
flip :: (a -> b -> c) -> (b -> a -> c)
```


# Aliases

- [lib.flip](/nix-doc-comments/reference/lib/lib-flip)


