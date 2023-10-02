---
title: lib.assertMsg
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/asserts.nix#L28C5
description: lib.assertMsg
sidebar:

    order: 8
---

Throw if pred is false, else return pred.
Intended to be used to augment asserts with helpful error messages.

# Example

```nix
assertMsg false "nope"
stderr> error: nope

assert assertMsg ("foo" == "bar") "foo is not bar, silly"; ""
stderr> error: foo is not bar, silly
```

# Type

```haskell
assertMsg :: Bool -> String -> Bool
```


# Aliases

- [lib.asserts.assertMsg](/nix-doc-comments/reference/lib/asserts/lib-asserts-assertMsg)


