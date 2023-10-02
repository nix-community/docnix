---
title: lib.attrNames
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.attrNames
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 8
---

Return the names of the attributes in the set *set* in an
alphabetically sorted list. For instance, `builtins.attrNames { y
= 1; x = "foo"; }` evaluates to `[ "x" "y" ]`.


# Aliases

- [builtins.attrNames](/nix-doc-comments/reference/builtins/builtins-attrNames)
- [lib.attrsets.attrNames](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-attrNames)


