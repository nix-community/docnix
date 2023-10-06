---
title: lib.removeSuffix
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L939C5
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

```
string -> string -> string
```


# Aliases

- [lib.strings.removeSuffix](/nix-doc-comments/reference/lib/strings/lib-strings-removesuffix)


