---
title: lib.attrsets.genAttrs
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/attrsets.nix#L778C5
description: lib.attrsets.genAttrs
sidebar:

    order: 7
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


# Aliases

- [lib.genAttrs](/nix-doc-comments/reference/lib/lib-genAttrs)


