---
title: lib.options.getFiles
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.options.getFiles
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

- [lib.getFiles](reference/lib/lib-getFiles)
- [lib.getValues](reference/lib/lib-getValues)
- [lib.options.getValues](reference/lib/options/lib-options-getValues)
- [pkgs.copyPathsToStore](reference/pkgs/pkgs-copyPathsToStore)


