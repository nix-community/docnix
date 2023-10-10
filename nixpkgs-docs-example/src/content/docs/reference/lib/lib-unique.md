---
title: lib.unique
editUrl: false
description: lib.unique
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 8
---

Reduce a list by applying a binary operator, from left to right,
e.g. `foldl' op nul [x0 x1 x2 ...] = op (op (op nul x0) x1) x2)
...`. For example, `foldl' (x: y: x + y) 0 [1 2 3]` evaluates to 6.
The return value of each application of `op` is evaluated immediately,
even for intermediate values.


# Aliases

- [lib.lists.unique](/nix-doc-comments/reference/lib/lists/lib-lists-unique)


