---
title: lib.traceValFn
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L81C5
description: lib.traceValFn
sidebar:

    order: 8
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

```
traceValFn :: (a -> b) -> a -> a
```


# Aliases

- [lib.debug.traceValFn](/nix-doc-comments/reference/lib/debug/lib-debug-tracevalfn)


