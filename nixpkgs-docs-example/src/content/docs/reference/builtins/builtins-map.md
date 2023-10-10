---
title: builtins.map
editUrl: false
description: builtins.map
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 0
---

Apply the function *f* to each element in the list *list*. For
example,

```nix
map (x: "foo" + x) [ "bar" "bla" "abc" ]
```

evaluates to `[ "foobar" "foobla" "fooabc" ]`.


# Aliases

- [lib.lists.map](/nix-doc-comments/reference/lib/lists/lib-lists-map)


