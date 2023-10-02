---
title: lib.mergeAttrsByFuncDefaults
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L115C20
description: lib.mergeAttrsByFuncDefaults
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

```haskell
foldl :: (b -> a -> b) -> b -> [a] -> b
```


# Aliases

- [lib.misc.mergeAttrsByFuncDefaults](./reference/lib/misc/lib-misc-mergeAttrsByFuncDefaults)


