---
title: builtins.listToAttrs
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: builtins.listToAttrs
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 0
---

Construct a set from a list specifying the names and values of each
attribute. Each element of the list should be a set consisting of a
string-valued attribute `name` specifying the name of the attribute,
and an attribute `value` specifying its value.

In case of duplicate occurrences of the same name, the first
takes precedence.

Example:

```nix
builtins.listToAttrs
  [ { name = "foo"; value = 123; }
    { name = "bar"; value = 456; }
    { name = "bar"; value = 420; }
  ]
```

evaluates to

```nix
{ foo = 123; bar = 456; }
```


# Aliases

- [lib.attrsets.listtoattrs](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-listtoattrs)
- [lib.listtoattrs](/nix-doc-comments/reference/lib/lib-listtoattrs)


