---
title: builtins.replaceStrings
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: builtins.replaceStrings
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 0
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

- [lib.replaceChars](/nix-doc-comments/reference/lib/lib-replaceChars)
- [lib.replaceStrings](/nix-doc-comments/reference/lib/lib-replaceStrings)
- [lib.strings.replaceChars](/nix-doc-comments/reference/lib/strings/lib-strings-replaceChars)
- [lib.strings.replaceStrings](/nix-doc-comments/reference/lib/strings/lib-strings-replaceStrings)


