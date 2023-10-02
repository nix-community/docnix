---
title: lib.asserts.assertMsg
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/asserts.nix#L28C5
description: lib.asserts.assertMsg
sidebar:

    order: 7
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

- [lib.assertmsg](/nix-doc-comments/reference/lib/lib-assertmsg)


