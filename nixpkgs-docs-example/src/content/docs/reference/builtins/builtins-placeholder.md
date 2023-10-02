---
title: builtins.placeholder
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: builtins.placeholder
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 0
---

Return a placeholder string for the specified *output* that will be
substituted by the corresponding output path at build time. Typical
outputs would be `"out"`, `"bin"` or `"dev"`.



