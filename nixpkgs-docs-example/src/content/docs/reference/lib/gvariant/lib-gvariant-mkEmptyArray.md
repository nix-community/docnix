---
title: lib.gvariant.mkEmptyArray
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/gvariant.nix#L128C18
description: lib.gvariant.mkEmptyArray
sidebar:

    order: 7
---

Returns the GVariant array from the given empty Nix list.

# Example

```nix
# Creating an empty string array
lib.gvariant.mkEmptyArray (lib.gvariant.type.string)
```

# Type

```haskell
mkEmptyArray :: gvariant.type -> gvariant
```



