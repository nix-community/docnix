---
title: lib.lists.map
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.lists.map
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

- [builtins.map](./reference/builtins/builtins-map)


