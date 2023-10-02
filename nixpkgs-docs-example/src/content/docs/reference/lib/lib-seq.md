---
title: lib.seq
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.seq
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 8
---

Evaluate *e1*, then evaluate and return *e2*. This ensures that a
computation is strict in the value of *e1*.


# Aliases

- [builtins.seq](./reference/builtins/builtins-seq)
- [lib.trivial.seq](./reference/lib/trivial/lib-trivial-seq)


