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

- [lib.mergeattrby.buildinputs](/nix-doc-comments/reference/lib/mergeattrby/lib-mergeattrby-buildinputs)
- [lib.mergeattrby.configureflags](/nix-doc-comments/reference/lib/mergeattrby/lib-mergeattrby-configureflags)
- [lib.mergeattrby.nativebuildinputs](/nix-doc-comments/reference/lib/mergeattrby/lib-mergeattrby-nativebuildinputs)
- [lib.mergeattrby.patches](/nix-doc-comments/reference/lib/mergeattrby/lib-mergeattrby-patches)
- [lib.mergeattrby.postall](/nix-doc-comments/reference/lib/mergeattrby/lib-mergeattrby-postall)
- [lib.mergeattrby.prephases](/nix-doc-comments/reference/lib/mergeattrby/lib-mergeattrby-prephases)
- [lib.mergeattrby.propagatedbuildinputs](/nix-doc-comments/reference/lib/mergeattrby/lib-mergeattrby-propagatedbuildinputs)
- [lib.trivial.concat](/nix-doc-comments/reference/lib/trivial/lib-trivial-concat)


