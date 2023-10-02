---
title: lib.const
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/trivial.nix#L42C5
description: lib.const
sidebar:

    order: 8
---

The constant function

Ignores the second argument. If called with only one argument,
constructs a function that always returns a static value.

# Example

```nix
let f = const 5; in f 10
=> 5
```

# Type

```haskell
const :: a -> b -> a
```


# Aliases

- [lib.trivial.const](/reference/libtrivial.const)

