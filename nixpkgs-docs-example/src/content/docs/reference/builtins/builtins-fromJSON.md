---
title: builtins.fromJSON
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: builtins.fromJSON
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 0
---

Convert a JSON string to a Nix value. For example,

```nix
builtins.fromJSON ''{"x": [1, 2, 3], "y": null}''
```

returns the value `{ x = [ 1 2 3 ]; y = null; }`.


# Aliases

- [lib.strings.fromJSON](/nix-doc-comments/reference/lib/strings/lib-strings-fromJSON)


