---
title: builtins.hashString
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: builtins.hashString
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 0
---

Return a base-16 representation of the cryptographic hash of string
*s*. The hash algorithm specified by *type* must be one of `"md5"`,
`"sha1"`, `"sha256"` or `"sha512"`.



