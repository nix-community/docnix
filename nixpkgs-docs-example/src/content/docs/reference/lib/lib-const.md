---
title: lib.const
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/trivial.nix#L42C5
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

```
const :: a -> b -> a
```


# Aliases

- [lib.trivial.const](/nix-doc-comments/reference/lib/trivial/lib-trivial-const)


