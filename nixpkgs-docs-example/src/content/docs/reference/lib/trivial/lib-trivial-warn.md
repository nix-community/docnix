---
title: lib.trivial.warn
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/trivial.nix#L472C10
description: lib.trivial.warn
sidebar:

    order: 7
---

Print a warning before returning the second argument. This function behaves
like `builtins.trace`, but requires a string message and formats it as a
warning, including the `warning: ` prefix.

To get a call stack trace and abort evaluation, set the environment variable
`NIX_ABORT_ON_WARN=true` and set the Nix options `--option pure-eval false --show-trace`

# Type

```haskell
string -> a -> a
```


# Aliases

- [lib.warn](/nix-doc-comments/reference/lib/lib-warn)


