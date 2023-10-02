---
title: builtins.concatMap
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: builtins.concatMap
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 0
---

This function is equivalent to `builtins.concatLists (map f list)`
but is more efficient.


# Aliases

- [lib.concatMap](/reference/libconcatMap)
- [lib.lists.concatMap](/reference/liblists.concatMap)


