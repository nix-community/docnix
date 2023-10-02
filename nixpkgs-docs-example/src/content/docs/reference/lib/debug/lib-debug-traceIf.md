---
title: lib.debug.traceIf
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/debug.nix#L55C5
description: lib.debug.traceIf
sidebar:

    order: 7
---

Conditionally trace the supplied message, based on a predicate.

# Example

```nix
traceIf true "hello" 3
trace: hello
=> 3
```

# Type

```haskell
traceIf :: bool -> string -> a -> a
```


# Aliases

- [lib.traceIf](reference/lib/lib-traceIf)


