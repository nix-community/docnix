---
title: lib.strings.removeSuffix
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L939C5
description: lib.strings.removeSuffix
sidebar:

    order: 7
---

Return a string without the specified suffix, if the suffix matches.

# Example

```nix
removeSuffix "front" "homefront"
=> "home"
removeSuffix "xxx" "homefront"
=> "homefront"
```

# Type

```haskell
string -> string -> string
```


# Aliases

- [lib.removeSuffix](./reference/lib/lib-removeSuffix)


