---
title: lib.strings.escape
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L552C12
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

```haskell
escape :: [string] -> string -> string
```


# Aliases

- [lib.escape](./reference/lib/lib-escape)


