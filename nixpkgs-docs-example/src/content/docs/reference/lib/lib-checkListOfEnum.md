---
title: lib.checkListOfEnum
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/trivial.nix#L552C21
description: lib.checkListOfEnum
sidebar:

    order: 8
---

Check if the elements in a list are valid values from a enum, returning the identity function, or throwing an error message otherwise.

# Example

```nix
let colorVariants = ["bright" "dark" "black"]
in checkListOfEnum "color variants" [ "standard" "light" "dark" ] colorVariants;
=>
error: color variants: bright, black unexpected; valid ones: standard, light, dark
```

# Type

```haskell
String -> List ComparableVal -> List ComparableVal -> a -> a
```


# Aliases

- [lib.trivial.checkListOfEnum](./reference/lib/trivial/lib-trivial-checkListOfEnum)


