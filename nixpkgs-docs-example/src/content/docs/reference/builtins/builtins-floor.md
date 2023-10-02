---
title: builtins.floor
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: builtins.floor
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 0
---

Converts an IEEE-754 double-precision floating-point number (*double*) to
the next lower integer.

If the datatype is neither an integer nor a "float", an evaluation error will be
thrown.



