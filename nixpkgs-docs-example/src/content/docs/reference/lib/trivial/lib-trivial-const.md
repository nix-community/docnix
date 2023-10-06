---
title: lib.trivial.const
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L42C5
description: lib.trivial.const
sidebar:

    order: 7
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

```
const :: a -> b -> a
```


# Aliases

- [lib.const](/nix-doc-comments/reference/lib/lib-const)


