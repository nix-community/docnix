---
title: lib.hasPrefix
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L371C5
description: lib.hasPrefix
sidebar:

    order: 8
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

- [lib.strings.hasPrefix](./reference/lib/strings/lib-strings-hasPrefix)


