---
title: lib.strings.escape
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L552C12
description: lib.strings.escape
sidebar:

    order: 7
---

Escape occurrence of the elements of `list` in `string` by
prefixing it with a backslash.

# Example

```nix
escape ["(" ")"] "(foo)"
=> "\\(foo\\)"
```

# Type

```
escape :: [string] -> string -> string
```


# Aliases

- [lib.escape](/nix-doc-comments/reference/lib/lib-escape)


