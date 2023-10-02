---
title: lib.getFiles
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.getFiles
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 8
---

Apply the function *f* to each element in the list *list*. For
example,

```nix
map (x: "foo" + x) [ "bar" "bla" "abc" ]
```

evaluates to `[ "foobar" "foobla" "fooabc" ]`.


# Aliases

- [lib.getvalues](/nix-doc-comments/reference/lib/lib-getvalues)
- [lib.options.getfiles](/nix-doc-comments/reference/lib/options/lib-options-getfiles)
- [lib.options.getvalues](/nix-doc-comments/reference/lib/options/lib-options-getvalues)
- [pkgs.copypathstostore](/nix-doc-comments/reference/pkgs/pkgs-copypathstostore)


