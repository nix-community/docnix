---
title: lib.attrsets.matchAttrs
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L1092C5
description: lib.attrsets.matchAttrs
sidebar:

    order: 7
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

- [lib.matchAttrs](/nix-doc-comments/reference/lib/lib-matchattrs)


