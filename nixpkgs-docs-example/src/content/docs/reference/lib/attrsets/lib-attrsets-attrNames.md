---
title: lib.attrsets.attrNames
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.attrsets.attrNames
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 7
---

Return the names of the attributes in the set *set* in an
alphabetically sorted list. For instance, `builtins.attrNames { y
= 1; x = "foo"; }` evaluates to `[ "x" "y" ]`.


# Aliases

- [builtins.attrNames](/nix-doc-comments/reference/builtins/builtins-attrNames)
- [lib.attrNames](/nix-doc-comments/reference/lib/lib-attrNames)


