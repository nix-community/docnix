---
title: lib.replaceChars
editUrl: false
description: lib.replaceChars
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

- [builtins.replaceStrings](/nix-doc-comments/reference/builtins/builtins-replacestrings)
- [lib.replaceStrings](/nix-doc-comments/reference/lib/lib-replacestrings)
- [lib.strings.replaceChars](/nix-doc-comments/reference/lib/strings/lib-strings-replacechars)
- [lib.strings.replaceStrings](/nix-doc-comments/reference/lib/strings/lib-strings-replacestrings)


