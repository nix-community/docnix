---
title: builtins.foldl' (Prime)
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: builtins.foldl'
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 0
---

Reduce a list by applying a binary operator, from left to right,
e.g. `foldl' op nul [x0 x1 x2 ...] = op (op (op nul x0) x1) x2)
...`. For example, `foldl' (x: y: x + y) 0 [1 2 3]` evaluates to 6.
The return value of each application of `op` is evaluated immediately,
even for intermediate values.


# Aliases

- [lib.foldl'](/reference/libfoldl')
- [lib.lists.foldl'](/reference/liblists.foldl')


