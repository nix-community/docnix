---
title: lib.concat
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/trivial.nix#L111C12
description: lib.concat
sidebar:

    order: 8
---

Concatenate two lists

# Example

```nix
concat [ 1 2 ] [ 3 4 ]
=> [ 1 2 3 4 ]
```

# Type

```haskell
concat :: [a] -> [a] -> [a]
```


# Aliases

- [lib.mergeAttrBy.buildInputs](/reference/libmergeAttrBy.buildInputs)
- [lib.mergeAttrBy.configureFlags](/reference/libmergeAttrBy.configureFlags)
- [lib.mergeAttrBy.nativeBuildInputs](/reference/libmergeAttrBy.nativeBuildInputs)
- [lib.mergeAttrBy.patches](/reference/libmergeAttrBy.patches)
- [lib.mergeAttrBy.postAll](/reference/libmergeAttrBy.postAll)
- [lib.mergeAttrBy.prePhases](/reference/libmergeAttrBy.prePhases)
- [lib.mergeAttrBy.propagatedBuildInputs](/reference/libmergeAttrBy.propagatedBuildInputs)
- [lib.trivial.concat](/reference/libtrivial.concat)

