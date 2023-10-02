---
title: lib.attrsets.catAttrs
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.attrsets.catAttrs
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 7
---

Collect each attribute named *attr* from a list of attribute
sets.  Attrsets that don't contain the named attribute are
ignored. For example,

```nix
builtins.catAttrs "a" [{a = 1;} {b = 0;} {a = 2;}]
```

evaluates to `[1 2]`.


# Aliases

- [builtins.catAttrs](./reference/builtins/builtins-catAttrs)
- [lib.catAttrs](./reference/lib/lib-catAttrs)


