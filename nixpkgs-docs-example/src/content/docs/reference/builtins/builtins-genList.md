---
title: builtins.genList
editUrl: false
description: builtins.genList
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 0
---

Generate list of size *length*, with each element *i* equal to the
value returned by *generator* `i`. For example,

```nix
builtins.genList (x: x * x) 5
```

returns the list `[ 0 1 4 9 16 ]`.


# Aliases

- [lib.genList](/nix-doc-comments/reference/lib/lib-genlist)
- [lib.lists.genList](/nix-doc-comments/reference/lib/lists/lib-lists-genlist)
- [lib.strings.genList](/nix-doc-comments/reference/lib/strings/lib-strings-genlist)


