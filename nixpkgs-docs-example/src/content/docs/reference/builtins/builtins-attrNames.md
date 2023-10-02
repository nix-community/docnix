---
title: builtins.attrNames
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: builtins.attrNames
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 0
---

Return the names of the attributes in the set *set* in an
alphabetically sorted list. For instance, `builtins.attrNames { y
= 1; x = "foo"; }` evaluates to `[ "x" "y" ]`.


# Aliases

- [lib.attrNames](reference/lib/lib-attrNames)
- [lib.attrsets.attrNames](reference/lib/attrsets/lib-attrsets-attrNames)


