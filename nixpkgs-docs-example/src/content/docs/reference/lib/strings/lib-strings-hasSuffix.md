---
title: lib.strings.hasSuffix
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L406C5
description: lib.strings.hasSuffix
sidebar:

    order: 7
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

- [lib.hasSuffix](./reference/lib/lib-hasSuffix)


