---
title: lib.strings.fromJSON
editUrl: false
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

- [builtins.fromJSON](/nix-doc-comments/reference/builtins/builtins-fromjson)
- [builtins.fromJSON](/nix-doc-comments/reference/builtins/builtins-fromjson)


