---
title: lib.strings.tail
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.strings.tail
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 7
---

Return the second to last elements of a list; abort evaluation if
the argument isn’t a list or is an empty list.

> **Warning**
>
> This function should generally be avoided since it's inefficient:
> unlike Haskell's `tail`, it takes O(n) time, so recursing over a
> list by repeatedly calling `tail` takes O(n^2) time.


# Aliases

- [builtins.tail](./reference/builtins/builtins-tail)
- [lib.lists.tail](./reference/lib/lists/lib-lists-tail)
- [lib.tail](./reference/lib/lib-tail)


