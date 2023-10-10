---
title: lib.options.getValues
editUrl: false
description: lib.options.getValues
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 7
---

Apply the function *f* to each element in the list *list*. For
example,

```nix
map (x: "foo" + x) [ "bar" "bla" "abc" ]
```

evaluates to `[ "foobar" "foobla" "fooabc" ]`.


# Aliases

- [lib.getFiles](/nix-doc-comments/reference/lib/lib-getfiles)
- [lib.getValues](/nix-doc-comments/reference/lib/lib-getvalues)
- [lib.options.getFiles](/nix-doc-comments/reference/lib/options/lib-options-getfiles)
- [pkgs.copyPathsToStore](/nix-doc-comments/reference/pkgs/pkgs-copypathstostore)


