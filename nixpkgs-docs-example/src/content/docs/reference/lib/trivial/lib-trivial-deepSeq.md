---
title: lib.trivial.deepSeq
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.trivial.deepSeq
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 7
---

This is like `seq e1 e2`, except that *e1* is evaluated *deeply*:
if it’s a list or set, its elements or attributes are also
evaluated recursively.


# Aliases

- [builtins.deepSeq](/nix-doc-comments/reference/builtins/builtins-deepseq)
- [lib.deepSeq](/nix-doc-comments/reference/lib/lib-deepseq)


