---
title: lib.mapAttrs
editUrl: false
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

- [builtins.mapAttrs](/nix-doc-comments/reference/builtins/builtins-mapattrs)
- [builtins.mapAttrs](/nix-doc-comments/reference/builtins/builtins-mapattrs)
- [lib.attrsets.mapAttrs](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-mapattrs)


