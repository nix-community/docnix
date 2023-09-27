---
title: lib.seq
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: seq
sidebar:
    badge: 
        text: Builtin
        variant: note

---

Evaluate *e1*, then evaluate and return *e2*. This ensures that a
computation is strict in the value of *e1*.
