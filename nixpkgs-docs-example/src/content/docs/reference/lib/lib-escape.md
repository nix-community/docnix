---
title: lib.escape
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L552C12
description: lib.escape
sidebar:

    order: 8
---

Escape occurrence of the elements of `list` in `string` by
prefixing it with a backslash.

# Example

```nix
escape ["(" ")"] "(foo)"
=> "\\(foo\\)"
```

# Type

```haskell
escape :: [string] -> string -> string
```


# Aliases

- [lib.strings.escape](/nix-doc-comments/reference/lib/strings/lib-strings-escape)


