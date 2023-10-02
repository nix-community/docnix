---
title: lib.concatMap
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.concatMap
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 8
---

This function is equivalent to `builtins.concatLists (map f list)`
but is more efficient.


# Aliases

- [builtins.concatMap](/reference/builtinsconcatMap)
- [lib.lists.concatMap](/reference/liblists.concatMap)


