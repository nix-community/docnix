---
title: lib.hasSuffix
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L406C5
description: lib.hasSuffix
sidebar:

    order: 8
---

Determine whether a string has given suffix.

# Example

```nix
hasSuffix "foo" "foobar"
=> false
hasSuffix "foo" "barfoo"
=> true
```

# Type

```haskell
hasSuffix :: string -> string -> bool
```


# Aliases

- [lib.strings.hasSuffix](./reference/lib/strings/lib-strings-hasSuffix)


