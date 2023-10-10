---
title: lib.foldl
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/lists.nix#L115C11
description: lib.foldl
sidebar:

    order: 8
---

“left fold”, like `foldr`, but from the left:
`foldl op nul [x_1 x_2 ... x_n] == op (... (op (op nul x_1) x_2) ... x_n)`.

# Example

```nix
lconcat = foldl (a: b: a + b) "z"
lconcat [ "a" "b" "c" ]
=> "zabc"
# different types
lstrange = foldl (str: int: str + toString (int + 1)) "a"
lstrange [ 1 2 3 4 ]
=> "a2345"
```

# Type

```
foldl :: (b -> a -> b) -> b -> [a] -> b
```


# Aliases

- [lib.lists.foldl](/nix-doc-comments/reference/lib/lists/lib-lists-foldl)


