---
title: lib.gvariant.mkArray
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/gvariant.nix#L100C13
description: lib.gvariant.mkArray
sidebar:

    order: 7
---

Returns the GVariant array from the given type of the elements and a Nix list.

# Example

```nix
# Creating a string array
lib.gvariant.mkArray [ "a" "b" "c" ]
```

# Type

```haskell
mkArray :: [Any] -> gvariant
```



