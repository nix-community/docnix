---
title: lib.traceSeqN
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/debug.nix#L149C15
description: lib.traceSeqN
sidebar:

    order: 8
---

Like `traceSeq`, but only evaluate down to depth n.
This is very useful because lots of `traceSeq` usages
lead to an infinite recursion.

# Example

```nix
traceSeqN 2 { a.b.c = 3; } null
trace: { a = { b = {…}; }; }
=> null
```

# Type

```
traceSeqN :: Int -> a -> b -> b
```


# Aliases

- [lib.debug.traceSeqN](/nix-doc-comments/reference/lib/debug/lib-debug-traceseqn)


