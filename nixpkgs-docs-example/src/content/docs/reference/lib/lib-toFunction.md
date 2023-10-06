---
title: lib.toFunction
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L617C5
description: lib.toFunction
sidebar:

    order: 8
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

- [lib.trivial.toFunction](/nix-doc-comments/reference/lib/trivial/lib-trivial-tofunction)


