---
title: lib.traceVal
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/debug.nix#L83C5
description: lib.traceVal
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

- [lib.debug.traceVal](/nix-doc-comments/reference/lib/debug/lib-debug-traceval)


