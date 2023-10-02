---
title: builtins.storePath
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: builtins.storePath
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 0
---

This function allows you to define a dependency on an already
existing store path. For example, the derivation attribute `src
= builtins.storePath /nix/store/f1d18v1y…-source` causes the
derivation to depend on the specified path, which must exist or
be substitutable. Note that this differs from a plain path
(e.g. `src = /nix/store/f1d18v1y…-source`) in that the latter
causes the path to be *copied* again to the Nix store, resulting
in a new path (e.g. `/nix/store/ld01dnzc…-source-source`).

Not available in [pure evaluation mode](@docroot@/command-ref/conf-file.md#conf-pure-eval).

See also [`builtins.fetchClosure`](#builtins-fetchClosure).


