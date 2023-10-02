---
title: lib.strings.replaceChars
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.strings.replaceChars
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

- [builtins.replaceStrings](/reference/builtinsreplaceStrings)
- [lib.replaceChars](/reference/libreplaceChars)
- [lib.replaceStrings](/reference/libreplaceStrings)
- [lib.strings.replaceStrings](/reference/libstrings.replaceStrings)

