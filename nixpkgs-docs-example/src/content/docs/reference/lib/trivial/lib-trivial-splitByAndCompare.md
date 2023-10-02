---
title: lib.trivial.splitByAndCompare
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/trivial.nix#L402C5
description: lib.trivial.splitByAndCompare
sidebar:

    order: 7
---

Split type into two subtypes by predicate `p`, take all elements
of the first subtype to be less than all the elements of the
second subtype, compare elements of a single subtype with `yes`
and `no` respectively.

# Example

```nix
let cmp = splitByAndCompare (hasPrefix "foo") compare compare; in

cmp "a" "z" => -1
cmp "fooa" "fooz" => -1

cmp "f" "a" => 1
cmp "fooa" "a" => -1
# while
compare "fooa" "a" => 1
```

# Type

```haskell
(a -> bool) -> (a -> a -> int) -> (a -> a -> int) -> (a -> a -> int)
```


# Aliases

- [lib.splitByAndCompare](/nix-doc-comments/reference/lib/lib-splitByAndCompare)


