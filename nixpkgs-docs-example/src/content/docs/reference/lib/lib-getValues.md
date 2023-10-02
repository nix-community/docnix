---
title: lib.getValues
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.getValues
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

- [lib.getFiles](reference/lib/lib-getFiles)
- [lib.options.getFiles](reference/lib/options/lib-options-getFiles)
- [lib.options.getValues](reference/lib/options/lib-options-getValues)
- [pkgs.copyPathsToStore](reference/pkgs/pkgs-copyPathsToStore)


