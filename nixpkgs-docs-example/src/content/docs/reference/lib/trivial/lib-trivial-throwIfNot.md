---
title: lib.trivial.throwIfNot
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/trivial.nix#L521C16
description: lib.trivial.throwIfNot
sidebar:

    order: 7
---

Like the `assert b; e` expression, but with a custom error message and
without the semicolon.

If true, return the identity function, `r: r`.

If false, throw the error message.

Calls can be juxtaposed using function application, as `(r: r) a = a`, so
`(r: r) (r: r) a = a`, and so forth.

# Example

```nix
throwIfNot (lib.isList overlays) "The overlays argument to nixpkgs must be a list."
lib.foldr (x: throwIfNot (lib.isFunction x) "All overlays passed to nixpkgs must be functions.") (r: r) overlays
pkgs
```

# Type

```haskell
bool -> string -> a -> a
```


# Aliases

- [lib.throwIfNot](./reference/lib/lib-throwIfNot)


