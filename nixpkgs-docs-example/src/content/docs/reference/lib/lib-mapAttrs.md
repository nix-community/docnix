---
title: lib.mapAttrs
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.mapAttrs
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 8
---

Apply function *f* to every element of *attrset*. For example,

```nix
builtins.mapAttrs (name: value: value * 10) { a = 1; b = 2; }
```

evaluates to `{ a = 10; b = 20; }`.


# Aliases

- [builtins.mapattrs](/nix-doc-comments/reference/builtins/builtins-mapattrs)
- [lib.attrsets.mapattrs](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-mapattrs)


