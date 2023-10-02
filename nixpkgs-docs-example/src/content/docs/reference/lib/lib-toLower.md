---
title: lib.toLower
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.toLower
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

- [lib.escapeRegex](reference/lib/lib-escapeRegex)
- [lib.escapeURL](reference/lib/lib-escapeURL)
- [lib.escapeXML](reference/lib/lib-escapeXML)
- [lib.strings.escapeRegex](reference/lib/strings/lib-strings-escapeRegex)
- [lib.strings.escapeURL](reference/lib/strings/lib-strings-escapeURL)
- [lib.strings.escapeXML](reference/lib/strings/lib-strings-escapeXML)
- [lib.strings.toLower](reference/lib/strings/lib-strings-toLower)
- [lib.strings.toUpper](reference/lib/strings/lib-strings-toUpper)
- [lib.toUpper](reference/lib/lib-toUpper)


