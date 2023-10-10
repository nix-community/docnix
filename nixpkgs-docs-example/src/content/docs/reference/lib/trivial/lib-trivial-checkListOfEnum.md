---
title: lib.trivial.checkListOfEnum
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/trivial.nix#L552C21
description: lib.trivial.checkListOfEnum
sidebar:

    order: 7
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

```
String -> List ComparableVal -> List ComparableVal -> a -> a
```


# Aliases

- [lib.checkListOfEnum](/nix-doc-comments/reference/lib/lib-checklistofenum)


