---
title: lib.strings.parseDrvName
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.strings.parseDrvName
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 7
---

Split the string *s* into a package name and version. The package
name is everything up to but not including the first dash not followed
by a letter, and the version is everything following that dash. The
result is returned in a set `{ name, version }`. Thus,
`builtins.parseDrvName "nix-0.12pre12876"` returns `{ name =
"nix"; version = "0.12pre12876"; }`.


# Aliases

- [builtins.parseDrvName](/reference/builtinsparseDrvName)


