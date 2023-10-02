---
title: lib.lists.imap0
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L154C11
description: lib.lists.imap0
sidebar:

    order: 7
---

Map with index starting from 0

# Example

```nix
imap0 (i: v: "${v}-${toString i}") ["a" "b"]
=> [ "a-0" "b-1" ]
```

# Type

```haskell
imap0 :: (int -> a -> b) -> [a] -> [b]
```


# Aliases

- [lib.imap0](/reference/libimap0)


