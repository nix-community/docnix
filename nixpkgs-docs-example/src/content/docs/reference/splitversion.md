---
title: lib.splitVersion
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: splitVersion
sidebar:
    badge: 
        text: Builtin
        variant: note

---

Split a string representing a version into its components, by the
same version splitting logic underlying the version comparison in
[`nix-env -u`](../command-ref/nix-env.md#operation---upgrade).
