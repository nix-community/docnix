---
title: lib.concat
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L111C12
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

```
concat :: [a] -> [a] -> [a]
```


# Aliases

- [lib.mergeAttrBy.buildInputs](/nix-doc-comments/reference/lib/mergeattrby/lib-mergeattrby-buildinputs)
- [lib.mergeAttrBy.configureFlags](/nix-doc-comments/reference/lib/mergeattrby/lib-mergeattrby-configureflags)
- [lib.mergeAttrBy.nativeBuildInputs](/nix-doc-comments/reference/lib/mergeattrby/lib-mergeattrby-nativebuildinputs)
- [lib.mergeAttrBy.patches](/nix-doc-comments/reference/lib/mergeattrby/lib-mergeattrby-patches)
- [lib.mergeAttrBy.postAll](/nix-doc-comments/reference/lib/mergeattrby/lib-mergeattrby-postall)
- [lib.mergeAttrBy.prePhases](/nix-doc-comments/reference/lib/mergeattrby/lib-mergeattrby-prephases)
- [lib.mergeAttrBy.propagatedBuildInputs](/nix-doc-comments/reference/lib/mergeattrby/lib-mergeattrby-propagatedbuildinputs)
- [lib.trivial.concat](/nix-doc-comments/reference/lib/trivial/lib-trivial-concat)


