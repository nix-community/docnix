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

- [lib.mergeAttrBy.buildInputs](./reference/lib/mergeAttrBy/lib-mergeAttrBy-buildInputs)
- [lib.mergeAttrBy.configureFlags](./reference/lib/mergeAttrBy/lib-mergeAttrBy-configureFlags)
- [lib.mergeAttrBy.nativeBuildInputs](./reference/lib/mergeAttrBy/lib-mergeAttrBy-nativeBuildInputs)
- [lib.mergeAttrBy.patches](./reference/lib/mergeAttrBy/lib-mergeAttrBy-patches)
- [lib.mergeAttrBy.postAll](./reference/lib/mergeAttrBy/lib-mergeAttrBy-postAll)
- [lib.mergeAttrBy.prePhases](./reference/lib/mergeAttrBy/lib-mergeAttrBy-prePhases)
- [lib.mergeAttrBy.propagatedBuildInputs](./reference/lib/mergeAttrBy/lib-mergeAttrBy-propagatedBuildInputs)
- [lib.trivial.concat](./reference/lib/trivial/lib-trivial-concat)


