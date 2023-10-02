---
title: lib.gvariant.mkVariant
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/gvariant.nix#L152C15
description: lib.gvariant.mkVariant
sidebar:

    order: 7
---

Returns the GVariant variant from the given Nix value. Variants are containers
of different GVariant type.

# Example

```nix
lib.gvariant.mkArray [
(lib.gvariant.mkVariant "a string")
(lib.gvariant.mkVariant (lib.gvariant.mkInt32 1))
]
```

# Type

```haskell
mkVariant :: Any -> gvariant
```



