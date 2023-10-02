---
title: lib.strings.compareVersions
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.strings.compareVersions
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 7
---

Compare two strings representing versions and return `-1` if
version *s1* is older than version *s2*, `0` if they are the same,
and `1` if *s1* is newer than *s2*. The version comparison
algorithm is the same as the one used by [`nix-env
-u`](../command-ref/nix-env.md#operation---upgrade).


# Aliases

- [builtins.compareVersions](reference/builtins/builtins-compareVersions)


