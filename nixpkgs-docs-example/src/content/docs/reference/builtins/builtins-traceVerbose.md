---
title: builtins.traceVerbose
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: builtins.traceVerbose
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 0
---

Evaluate *e1* and print its abstract syntax representation on standard
error if `--trace-verbose` is enabled. Then return *e2*. This function
is useful for debugging.



