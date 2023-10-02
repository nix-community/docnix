---
title: lib.traceSeq
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/debug.nix#L126C5
description: lib.traceSeq
sidebar:

    order: 8
---

`builtins.trace`, but the value is `builtins.deepSeq`ed first.

# Example

```nix
trace { a.b.c = 3; } null
trace: { a = <CODE>; }
=> null
traceSeq { a.b.c = 3; } null
trace: { a = { b = { c = 3; }; }; }
=> null
```

# Type

```haskell
traceSeq :: a -> b -> b
```


# Aliases

- [lib.debug.traceSeq](./reference/lib/debug/lib-debug-traceSeq)


