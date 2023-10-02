---
title: lib.escapeXML
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.escapeXML
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

- [lib.escapeRegex](/nix-doc-comments/reference/lib/lib-escapeRegex)
- [lib.escapeURL](/nix-doc-comments/reference/lib/lib-escapeURL)
- [lib.strings.escapeRegex](/nix-doc-comments/reference/lib/strings/lib-strings-escapeRegex)
- [lib.strings.escapeURL](/nix-doc-comments/reference/lib/strings/lib-strings-escapeURL)
- [lib.strings.escapeXML](/nix-doc-comments/reference/lib/strings/lib-strings-escapeXML)
- [lib.strings.toLower](/nix-doc-comments/reference/lib/strings/lib-strings-toLower)
- [lib.strings.toUpper](/nix-doc-comments/reference/lib/strings/lib-strings-toUpper)
- [lib.toLower](/nix-doc-comments/reference/lib/lib-toLower)
- [lib.toUpper](/nix-doc-comments/reference/lib/lib-toUpper)


