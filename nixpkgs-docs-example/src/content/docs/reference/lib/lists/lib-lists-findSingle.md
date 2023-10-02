---
title: lib.lists.findSingle
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L254C5
description: lib.lists.findSingle
sidebar:

    order: 7
---

Find the sole element in the list matching the specified
predicate, returns `default` if no such element exists, or
`multiple` if there are multiple matching elements.

# Example

```nix
findSingle (x: x == 3) "none" "multiple" [ 1 3 3 ]
=> "multiple"
findSingle (x: x == 3) "none" "multiple" [ 1 3 ]
=> 3
findSingle (x: x == 3) "none" "multiple" [ 1 9 ]
=> "none"
```

# Type

```haskell
findSingle :: (a -> bool) -> a -> a -> [a] -> a
```


# Aliases

- [lib.findSingle](reference/lib/lib-findSingle)


