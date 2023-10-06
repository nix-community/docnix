---
title: lib.matchAttrs
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L1092C5
description: lib.matchAttrs
sidebar:

    order: 8
---

Returns true if the pattern is contained in the set. False otherwise.

# Example

```nix
matchAttrs { cpu = {}; } { cpu = { bits = 64; }; }
=> true
```

# Type

```
matchAttrs :: AttrSet -> AttrSet -> Bool
```


# Aliases

- [lib.attrsets.matchAttrs](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-matchattrs)


