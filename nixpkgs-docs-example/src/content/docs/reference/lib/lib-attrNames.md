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

- [builtins.attrNames](/reference/builtinsattrNames)
- [lib.attrsets.attrNames](/reference/libattrsets.attrNames)

