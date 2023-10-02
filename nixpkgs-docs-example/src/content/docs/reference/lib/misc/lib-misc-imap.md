---
title: lib.misc.imap
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L172C11
description: lib.misc.imap
sidebar:

    order: 7
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

- [lib.imap](/nix-doc-comments/reference/lib/lib-imap)
- [lib.imap1](/nix-doc-comments/reference/lib/lib-imap1)
- [lib.lists.imap1](/nix-doc-comments/reference/lib/lists/lib-lists-imap1)


