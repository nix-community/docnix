---
title: lib.strings.toLower
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.strings.toLower
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

- [lib.escapeRegex](/reference/libescapeRegex)
- [lib.escapeURL](/reference/libescapeURL)
- [lib.escapeXML](/reference/libescapeXML)
- [lib.strings.escapeRegex](/reference/libstrings.escapeRegex)
- [lib.strings.escapeURL](/reference/libstrings.escapeURL)
- [lib.strings.escapeXML](/reference/libstrings.escapeXML)
- [lib.strings.toUpper](/reference/libstrings.toUpper)
- [lib.toLower](/reference/libtoLower)
- [lib.toUpper](/reference/libtoUpper)


