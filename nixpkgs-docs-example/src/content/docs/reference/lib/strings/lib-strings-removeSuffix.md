---
title: lib.strings.removeSuffix
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/strings.nix#L939C5
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

```
string -> string -> string
```


# Aliases

- [lib.removeSuffix](/nix-doc-comments/reference/lib/lib-removesuffix)


