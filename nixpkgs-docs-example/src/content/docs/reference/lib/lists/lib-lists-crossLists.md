---
title: lib.lists.crossLists
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L1042C6
description: lib.lists.crossLists
sidebar:

    order: 7
---

Return the image of the cross product of some lists by a function.

# Example

```nix
crossLists (x:y: "${toString x}${toString y}") [[1 2] [3 4]]
=> [ "13" "14" "23" "24" ]
```


# Aliases

- [lib.crossLists](reference/lib/lib-crossLists)


