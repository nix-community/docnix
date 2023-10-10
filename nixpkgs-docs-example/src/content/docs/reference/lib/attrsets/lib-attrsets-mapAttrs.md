---
title: lib.attrsets.mapAttrs
editUrl: false
description: lib.attrsets.mapAttrs
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 7
---

Apply function *f* to every element of *attrset*. For example,

```nix
builtins.mapAttrs (name: value: value * 10) { a = 1; b = 2; }
```

evaluates to `{ a = 10; b = 20; }`.


# Aliases

- [builtins.mapAttrs](/nix-doc-comments/reference/builtins/builtins-mapattrs)
- [builtins.mapAttrs](/nix-doc-comments/reference/builtins/builtins-mapattrs)
- [lib.mapAttrs](/nix-doc-comments/reference/lib/lib-mapattrs)


