---
title: lib.attrsets.getAttr
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.attrsets.getAttr
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 7
---

`getAttr` returns the attribute named *s* from *set*. Evaluation
aborts if the attribute doesn’t exist. This is a dynamic version of
the `.` operator, since *s* is an expression rather than an
identifier.


# Aliases

- [builtins.getAttr](/nix-doc-comments/reference/builtins/builtins-getAttr)
- [lib.getAttr](/nix-doc-comments/reference/lib/lib-getAttr)


