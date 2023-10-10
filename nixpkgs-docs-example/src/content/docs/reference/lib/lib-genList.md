---
title: lib.genList
editUrl: false
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

- [builtins.genList](/nix-doc-comments/reference/builtins/builtins-genlist)
- [builtins.genList](/nix-doc-comments/reference/builtins/builtins-genlist)
- [lib.lists.genList](/nix-doc-comments/reference/lib/lists/lib-lists-genlist)
- [lib.strings.genList](/nix-doc-comments/reference/lib/strings/lib-strings-genlist)


