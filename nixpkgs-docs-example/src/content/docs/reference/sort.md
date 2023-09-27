---
title: lib.sort
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: sort
sidebar:
    badge: 
        text: Builtin
        variant: note

---

Return *list* in sorted order. It repeatedly calls the function
*comparator* with two elements. The comparator should return `true`
if the first element is less than the second, and `false` otherwise.
For example,

```nix
builtins.sort builtins.lessThan [ 483 249 526 147 42 77 ]
```

produces the list `[ 42 77 147 249 483 526 ]`.

This is a stable sort: it preserves the relative order of elements
deemed equal by the comparator.
