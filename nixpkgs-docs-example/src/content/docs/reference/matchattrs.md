---
title: lib.matchAttrs
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/attrsets.nix#L1092C5
description: matchAttrs
---

Returns true if the pattern is contained in the set. False otherwise.

# Example

```nix
matchAttrs { cpu = {}; } { cpu = { bits = 64; }; }
=> true
```

# Type

```haskell
matchAttrs :: AttrSet -> AttrSet -> Bool
```
