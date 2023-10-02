---
title: builtins.seq
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: builtins.seq
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 0
---

Evaluate *e1*, then evaluate and return *e2*. This ensures that a
computation is strict in the value of *e1*.


# Aliases

- [lib.seq](/nix-doc-comments/reference/lib/lib-seq)
- [lib.trivial.seq](/nix-doc-comments/reference/lib/trivial/lib-trivial-seq)


