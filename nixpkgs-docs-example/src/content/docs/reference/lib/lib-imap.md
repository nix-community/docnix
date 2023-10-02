---
title: lib.imap
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L172C11
description: lib.imap
sidebar:

    order: 8
---

Map with index starting from 1

# Example

```nix
imap1 (i: v: "${v}-${toString i}") ["a" "b"]
=> [ "a-1" "b-2" ]
```

# Type

```haskell
imap1 :: (int -> a -> b) -> [a] -> [b]
```


# Aliases

- [lib.imap1](/reference/libimap1)
- [lib.lists.imap1](/reference/liblists.imap1)
- [lib.misc.imap](/reference/libmisc.imap)


