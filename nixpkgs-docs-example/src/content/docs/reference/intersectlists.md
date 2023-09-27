---
title: lib.intersectLists
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L1073C20
description: intersectLists
---

Intersects list 'e' and another list. O(nm) complexity.

# Example

```nix
intersectLists [ 1 2 3 ] [ 6 3 2 ]
=> [ 3 2 ]
```
