---
title: lib.deepSeq
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.deepSeq
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 8
---

This is like `seq e1 e2`, except that *e1* is evaluated *deeply*:
if it’s a list or set, its elements or attributes are also
evaluated recursively.


# Aliases

- [builtins.deepSeq](./reference/builtins/builtins-deepSeq)
- [lib.trivial.deepSeq](./reference/lib/trivial/lib-trivial-deepSeq)


