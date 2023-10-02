---
title: builtins.hasAttr
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: builtins.hasAttr
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 0
---

`hasAttr` returns `true` if *set* has an attribute named *s*, and
`false` otherwise. This is a dynamic version of the `?` operator,
since *s* is an expression rather than an identifier.


# Aliases

- [lib.attrsets.hasattr](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-hasattr)
- [lib.hasattr](/nix-doc-comments/reference/lib/lib-hasattr)


