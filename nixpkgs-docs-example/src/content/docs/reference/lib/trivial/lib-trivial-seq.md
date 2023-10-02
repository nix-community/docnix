---
title: lib.trivial.seq
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.trivial.seq
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 7
---

Evaluate *e1*, then evaluate and return *e2*. This ensures that a
computation is strict in the value of *e1*.


# Aliases

- [builtins.seq](/reference/builtinsseq)
- [lib.seq](/reference/libseq)


