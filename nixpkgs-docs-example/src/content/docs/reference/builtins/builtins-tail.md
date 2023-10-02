---
title: builtins.tail
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: builtins.tail
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 0
---

Return the second to last elements of a list; abort evaluation if
the argument isn’t a list or is an empty list.

> **Warning**
>
> This function should generally be avoided since it's inefficient:
> unlike Haskell's `tail`, it takes O(n) time, so recursing over a
> list by repeatedly calling `tail` takes O(n^2) time.


# Aliases

- [lib.lists.tail](/reference/liblists.tail)
- [lib.strings.tail](/reference/libstrings.tail)
- [lib.tail](/reference/libtail)

