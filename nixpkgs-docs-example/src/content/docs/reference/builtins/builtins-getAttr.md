---
title: builtins.getAttr
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: builtins.getAttr
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 0
---

`getAttr` returns the attribute named *s* from *set*. Evaluation
aborts if the attribute doesn’t exist. This is a dynamic version of
the `.` operator, since *s* is an expression rather than an
identifier.


# Aliases

- [lib.attrsets.getattr](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-getattr)
- [lib.getattr](/nix-doc-comments/reference/lib/lib-getattr)


