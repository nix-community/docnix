---
title: lib.attrsets.catAttrs
editUrl: false
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

- [builtins.catAttrs](/nix-doc-comments/reference/builtins/builtins-catattrs)
- [builtins.catAttrs](/nix-doc-comments/reference/builtins/builtins-catattrs)
- [lib.catAttrs](/nix-doc-comments/reference/lib/lib-catattrs)


