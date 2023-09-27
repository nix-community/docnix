---
title: lib.traceValFn
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/debug.nix#L81C5
description: traceValFn
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
