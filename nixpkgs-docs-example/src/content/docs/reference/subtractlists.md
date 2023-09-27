---
title: lib.subtractLists
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L1085C19
description: subtractLists
---

Subtracts list 'e' from another list. O(nm) complexity.

# Example

```nix
subtractLists [ 3 2 ] [ 1 2 3 4 5 3 ]
=> [ 1 4 5 ]
```
