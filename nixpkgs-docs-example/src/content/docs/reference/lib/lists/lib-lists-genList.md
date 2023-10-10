---
title: lib.lists.genList
editUrl: false
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

- [builtins.genList](/nix-doc-comments/reference/builtins/builtins-genlist)
- [builtins.genList](/nix-doc-comments/reference/builtins/builtins-genlist)
- [lib.genList](/nix-doc-comments/reference/lib/lib-genlist)
- [lib.strings.genList](/nix-doc-comments/reference/lib/strings/lib-strings-genlist)


