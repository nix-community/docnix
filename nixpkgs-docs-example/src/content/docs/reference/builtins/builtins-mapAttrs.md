---
title: builtins.mapAttrs
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: builtins.mapAttrs
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 0
---

Apply function *f* to every element of *attrset*. For example,

```nix
builtins.mapAttrs (name: value: value * 10) { a = 1; b = 2; }
```

evaluates to `{ a = 10; b = 20; }`.


# Aliases

- [lib.attrsets.mapAttrs](/reference/libattrsets.mapAttrs)
- [lib.mapAttrs](/reference/libmapAttrs)


