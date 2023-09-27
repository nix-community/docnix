---
title: lib.head
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: head
sidebar:
    badge: 
        text: Builtin
        variant: note

---

Return the first element of a list; abort evaluation if the argument
isn’t a list or is an empty list. You can test whether a list is
empty by comparing it with `[]`.
