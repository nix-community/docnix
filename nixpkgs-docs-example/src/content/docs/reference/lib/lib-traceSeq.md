---
title: lib.traceSeq
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/debug.nix#L126C5
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

```
traceSeq :: a -> b -> b
```


# Aliases

- [lib.debug.traceSeq](/nix-doc-comments/reference/lib/debug/lib-debug-traceseq)


