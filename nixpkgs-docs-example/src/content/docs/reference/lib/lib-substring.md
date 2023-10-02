---
title: lib.substring
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.substring
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 8
---

Return the substring of *s* from character position *start*
(zero-based) up to but not including *start + len*. If *start* is
greater than the length of the string, an empty string is returned,
and if *start + len* lies beyond the end of the string, only the
substring up to the end of the string is returned. *start* must be
non-negative. For example,

```nix
builtins.substring 0 3 "nixos"
```

evaluates to `"nix"`.


# Aliases

- [builtins.substring](reference/builtins/builtins-substring)
- [lib.strings.substring](reference/lib/strings/lib-strings-substring)


