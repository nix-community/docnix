---
title: lib.substring
editUrl: false
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

- [builtins.substring](/nix-doc-comments/reference/builtins/builtins-substring)
- [builtins.substring](/nix-doc-comments/reference/builtins/builtins-substring)
- [lib.strings.substring](/nix-doc-comments/reference/lib/strings/lib-strings-substring)


