---
title: lib.removeSuffix
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L939C5
description: lib.removeSuffix
sidebar:

    order: 8
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

- [lib.strings.removesuffix](/nix-doc-comments/reference/lib/strings/lib-strings-removesuffix)


