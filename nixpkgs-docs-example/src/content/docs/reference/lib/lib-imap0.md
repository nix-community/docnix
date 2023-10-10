---
title: lib.imap0
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/lists.nix#L154C11
description: lib.imap0
sidebar:

    order: 8
---

Map with index starting from 0

# Example

```nix
imap0 (i: v: "${v}-${toString i}") ["a" "b"]
=> [ "a-0" "b-1" ]
```

# Type

```
imap0 :: (int -> a -> b) -> [a] -> [b]
```


# Aliases

- [lib.lists.imap0](/nix-doc-comments/reference/lib/lists/lib-lists-imap0)


