---
title: lib.isStringLike
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L1284C18
description: isStringLike
---

Check whether a value can be coerced to a string.
The value must be a string, path, or attribute set.

String-like values can be used without explicit conversion in
string interpolations and in most functions that expect a string.
