---
title: lib.lists.foldl' (Prime)
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.lists.foldl'
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 7
---

Reduce a list by applying a binary operator, from left to right,
e.g. `foldl' op nul [x0 x1 x2 ...] = op (op (op nul x0) x1) x2)
...`. For example, `foldl' (x: y: x + y) 0 [1 2 3]` evaluates to 6.
The return value of each application of `op` is evaluated immediately,
even for intermediate values.


# Aliases

- [builtins.foldl'](./reference/builtins/builtins-foldl' (Prime))
- [lib.foldl'](./reference/lib/lib-foldl' (Prime))


