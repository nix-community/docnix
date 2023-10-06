---
title: lib.debug.traceSeqN
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L149C15
description: lib.debug.traceSeqN
sidebar:

    order: 7
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

- [lib.traceSeqN](/nix-doc-comments/reference/lib/lib-traceseqn)


