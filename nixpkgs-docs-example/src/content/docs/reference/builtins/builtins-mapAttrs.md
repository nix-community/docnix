---
title: builtins.mapAttrs
editUrl: false
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

- [lib.attrsets.mapAttrs](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-mapattrs)
- [lib.mapAttrs](/nix-doc-comments/reference/lib/lib-mapattrs)


