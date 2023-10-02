---
title: lib.options.getValues
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
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

- [lib.getFiles](/reference/libgetFiles)
- [lib.getValues](/reference/libgetValues)
- [lib.options.getFiles](/reference/liboptions.getFiles)
- [pkgs.copyPathsToStore](/reference/pkgscopyPathsToStore)


