---
title: builtins.getFlake
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: builtins.getFlake
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 0
---

Fetch a flake from a flake reference, and return its output attributes and some metadata. For example:

```nix
(builtins.getFlake "nix/55bc52401966fbffa525c574c14f67b00bc4fb3a").packages.x86_64-linux.nix
```

Unless impure evaluation is allowed (`--impure`), the flake reference
must be "locked", e.g. contain a Git revision or content hash. An
example of an unlocked usage is:

```nix
(builtins.getFlake "github:edolstra/dwarffs").rev
```


