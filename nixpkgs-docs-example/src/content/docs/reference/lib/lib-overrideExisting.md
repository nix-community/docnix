---
title: lib.overrideExisting
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/attrsets.nix#L1127C5
description: lib.overrideExisting
sidebar:

    order: 8
---

Override only the attributes that are already present in the old set
useful for deep-overriding.

# Example

```nix
overrideExisting {} { a = 1; }
=> {}
overrideExisting { b = 2; } { a = 1; }
=> { b = 2; }
overrideExisting { a = 3; b = 2; } { a = 1; }
=> { a = 1; b = 2; }
```

# Type

```haskell
overrideExisting :: AttrSet -> AttrSet -> AttrSet
```


# Aliases

- [lib.attrsets.overrideExisting](/reference/libattrsets.overrideExisting)


