---
title: lib.genList
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.genList
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 8
---

Generate list of size *length*, with each element *i* equal to the
value returned by *generator* `i`. For example,

```nix
builtins.genList (x: x * x) 5
```

returns the list `[ 0 1 4 9 16 ]`.


# Aliases

- [builtins.genList](/nix-doc-comments/reference/builtins/builtins-genList)
- [lib.lists.genList](/nix-doc-comments/reference/lib/lists/lib-lists-genList)
- [lib.strings.genList](/nix-doc-comments/reference/lib/strings/lib-strings-genList)


