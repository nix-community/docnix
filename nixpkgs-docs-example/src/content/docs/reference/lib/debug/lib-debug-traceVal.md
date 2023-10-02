---
title: lib.debug.traceVal
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/debug.nix#L83C5
description: lib.debug.traceVal
sidebar:

    order: 7
---

Trace the supplied value after applying a function to it, and
return the original value.

# Example

```nix
traceValFn (v: "mystring ${v}") "foo"
trace: mystring foo
=> "foo"
```

# Type

```haskell
traceValFn :: (a -> b) -> a -> a
```


# Aliases

- [lib.traceVal](./reference/lib/lib-traceVal)


