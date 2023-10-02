---
title: lib.lists.genList
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.lists.genList
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 7
---

Generate list of size *length*, with each element *i* equal to the
value returned by *generator* `i`. For example,

```nix
builtins.genList (x: x * x) 5
```

returns the list `[ 0 1 4 9 16 ]`.


# Aliases

- [builtins.genList](/nix-doc-comments/reference/builtins/builtins-genList)
- [lib.genList](/nix-doc-comments/reference/lib/lib-genList)
- [lib.strings.genList](/nix-doc-comments/reference/lib/strings/lib-strings-genList)


