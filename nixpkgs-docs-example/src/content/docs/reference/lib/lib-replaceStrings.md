---
title: lib.replaceStrings
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.replaceStrings
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 8
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

- [builtins.replaceStrings](reference/builtins/builtins-replaceStrings)
- [lib.replaceChars](reference/lib/lib-replaceChars)
- [lib.strings.replaceChars](reference/lib/strings/lib-strings-replaceChars)
- [lib.strings.replaceStrings](reference/lib/strings/lib-strings-replaceStrings)


