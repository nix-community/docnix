---
title: lib.flip
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/trivial.nix#L198C10
description: lib.flip
sidebar:

    order: 8
---

Flip the order of the arguments of a binary function.

# Example

```nix
flip concat [1] [2]
=> [ 2 1 ]
```

# Type

```haskell
flip :: (a -> b -> c) -> (b -> a -> c)
```


# Aliases

- [lib.trivial.flip](/nix-doc-comments/reference/lib/trivial/lib-trivial-flip)


