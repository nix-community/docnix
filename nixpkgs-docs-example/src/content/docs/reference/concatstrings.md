---
title: lib.concatStrings
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: concatStrings
sidebar:
    badge: 
        text: Builtin
        variant: note

---

Concatenate a list of strings with a separator between each
element, e.g. `concatStringsSep "/" ["usr" "local" "bin"] ==
"usr/local/bin"`.
