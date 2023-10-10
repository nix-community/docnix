---
title: lib.debug.traceValFn
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/debug.nix#L81C5
description: lib.debug.traceValFn
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

```
traceValFn :: (a -> b) -> a -> a
```


# Aliases

- [lib.traceValFn](/nix-doc-comments/reference/lib/lib-tracevalfn)


