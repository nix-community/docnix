---
title: lib.debug.traceSeq
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/debug.nix#L126C5
description: lib.debug.traceSeq
sidebar:

    order: 7
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

- [lib.traceseq](/nix-doc-comments/reference/lib/lib-traceseq)


