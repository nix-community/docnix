---
title: builtins.partition
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: builtins.partition
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 0
---

Given a predicate function *pred*, this function returns an
attrset containing a list named `right`, containing the elements
in *list* for which *pred* returned `true`, and a list named
`wrong`, containing the elements for which it returned
`false`. For example,

```nix
builtins.partition (x: x > 10) [1 23 9 3 42]
```

evaluates to

```nix
{ right = [ 23 42 ]; wrong = [ 1 9 3 ]; }
```


# Aliases

- [lib.lists.partition](reference/lib/lists/lib-lists-partition)
- [lib.partition](reference/lib/lib-partition)


