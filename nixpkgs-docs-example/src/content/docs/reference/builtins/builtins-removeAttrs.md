---
title: builtins.removeAttrs
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: builtins.removeAttrs
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 0
---

Remove the attributes listed in *list* from *set*. The attributes
don’t have to exist in *set*. For instance,

```nix
removeAttrs { x = 1; y = 2; z = 3; } [ "a" "x" "z" ]
```

evaluates to `{ y = 2; }`.


# Aliases

- [lib.attrsets.removeattrs](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-removeattrs)


