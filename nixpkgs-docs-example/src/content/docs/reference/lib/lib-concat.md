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

- [lib.mergeAttrBy.buildInputs](/nix-doc-comments/reference/lib/mergeAttrBy/lib-mergeAttrBy-buildInputs)
- [lib.mergeAttrBy.configureFlags](/nix-doc-comments/reference/lib/mergeAttrBy/lib-mergeAttrBy-configureFlags)
- [lib.mergeAttrBy.nativeBuildInputs](/nix-doc-comments/reference/lib/mergeAttrBy/lib-mergeAttrBy-nativeBuildInputs)
- [lib.mergeAttrBy.patches](/nix-doc-comments/reference/lib/mergeAttrBy/lib-mergeAttrBy-patches)
- [lib.mergeAttrBy.postAll](/nix-doc-comments/reference/lib/mergeAttrBy/lib-mergeAttrBy-postAll)
- [lib.mergeAttrBy.prePhases](/nix-doc-comments/reference/lib/mergeAttrBy/lib-mergeAttrBy-prePhases)
- [lib.mergeAttrBy.propagatedBuildInputs](/nix-doc-comments/reference/lib/mergeAttrBy/lib-mergeAttrBy-propagatedBuildInputs)
- [lib.trivial.concat](/nix-doc-comments/reference/lib/trivial/lib-trivial-concat)


