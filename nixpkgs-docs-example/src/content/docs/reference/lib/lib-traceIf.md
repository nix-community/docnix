---
title: lib.traceIf
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/debug.nix#L55C5
description: lib.traceIf
sidebar:

    order: 8
---

Conditionally trace the supplied message, based on a predicate.

# Example

```nix
traceIf true "hello" 3
trace: hello
=> 3
```

# Type

```
traceIf :: bool -> string -> a -> a
```


# Aliases

- [lib.debug.traceIf](/nix-doc-comments/reference/lib/debug/lib-debug-traceif)


