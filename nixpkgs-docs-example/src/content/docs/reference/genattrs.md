---
title: lib.genAttrs
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/attrsets.nix#L778C5
description: genAttrs
---

Generate an attribute set by mapping a function over a list of
attribute names.

# Example

```nix
genAttrs [ "foo" "bar" ] (name: "x_" + name)
=> { foo = "x_foo"; bar = "x_bar"; }
```

# Type

```haskell
genAttrs :: [ String ] -> (String -> Any) -> AttrSet
```
