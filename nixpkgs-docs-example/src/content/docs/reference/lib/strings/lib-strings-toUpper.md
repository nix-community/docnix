---
title: lib.strings.toUpper
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.strings.toUpper
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 7
---

Given string *s*, replace every occurrence of the strings in *from*
with the corresponding string in *to*.

The argument *to* is lazy, that is, it is only evaluated when its corresponding pattern in *from* is matched in the string *s*

Example:

```nix
builtins.replaceStrings ["oo" "a"] ["a" "i"] "foobar"
```

evaluates to `"fabir"`.


# Aliases

- [lib.escaperegex](/nix-doc-comments/reference/lib/lib-escaperegex)
- [lib.escapeurl](/nix-doc-comments/reference/lib/lib-escapeurl)
- [lib.escapexml](/nix-doc-comments/reference/lib/lib-escapexml)
- [lib.strings.escaperegex](/nix-doc-comments/reference/lib/strings/lib-strings-escaperegex)
- [lib.strings.escapeurl](/nix-doc-comments/reference/lib/strings/lib-strings-escapeurl)
- [lib.strings.escapexml](/nix-doc-comments/reference/lib/strings/lib-strings-escapexml)
- [lib.strings.tolower](/nix-doc-comments/reference/lib/strings/lib-strings-tolower)
- [lib.tolower](/nix-doc-comments/reference/lib/lib-tolower)
- [lib.toupper](/nix-doc-comments/reference/lib/lib-toupper)


