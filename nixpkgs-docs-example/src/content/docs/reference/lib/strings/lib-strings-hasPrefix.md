---
title: lib.strings.hasPrefix
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L371C5
description: lib.strings.hasPrefix
sidebar:

    order: 7
---

Determine whether a string has given prefix.

# Example

```nix
hasPrefix "foo" "foobar"
=> true
hasPrefix "foo" "barfoo"
=> false
```

# Type

```haskell
hasPrefix :: string -> string -> bool
```


# Aliases

- [lib.hasPrefix](/reference/libhasPrefix)


