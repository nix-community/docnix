---
title: lib.trivial.toFunction
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/trivial.nix#L617C5
description: lib.trivial.toFunction
sidebar:

    order: 7
---

Turns any non-callable values into constant functions.
Returns callable values as is.

# Example

```nix
nix-repl> lib.toFunction 1 2
1

nix-repl> lib.toFunction (x: x + 1) 2
3
```


# Aliases

- [lib.toFunction](./reference/lib/lib-toFunction)


