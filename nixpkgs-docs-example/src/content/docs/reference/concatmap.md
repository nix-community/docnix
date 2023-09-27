---
title: lib.concatMap
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: concatMap
sidebar:
    badge: 
        text: Builtin
        variant: note

---

This function is equivalent to `builtins.concatLists (map f list)`
but is more efficient.
