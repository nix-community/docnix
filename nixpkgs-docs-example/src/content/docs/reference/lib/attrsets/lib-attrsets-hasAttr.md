---
title: lib.attrsets.hasAttr
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.attrsets.hasAttr
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 7
---

`hasAttr` returns `true` if *set* has an attribute named *s*, and
`false` otherwise. This is a dynamic version of the `?` operator,
since *s* is an expression rather than an identifier.


# Aliases

- [builtins.hasAttr](/nix-doc-comments/reference/builtins/builtins-hasattr)
- [lib.hasAttr](/nix-doc-comments/reference/lib/lib-hasattr)


