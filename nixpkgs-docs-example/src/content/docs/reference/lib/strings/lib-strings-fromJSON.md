---
title: lib.strings.fromJSON
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.strings.fromJSON
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 7
---

Convert a JSON string to a Nix value. For example,

```nix
builtins.fromJSON ''{"x": [1, 2, 3], "y": null}''
```

returns the value `{ x = [ 1 2 3 ]; y = null; }`.


# Aliases

- [builtins.fromjson](/nix-doc-comments/reference/builtins/builtins-fromjson)


