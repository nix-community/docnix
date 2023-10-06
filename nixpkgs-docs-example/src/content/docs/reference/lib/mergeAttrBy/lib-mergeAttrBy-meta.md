---
title: lib.mergeAttrBy.meta
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L178C5
description: lib.mergeAttrBy.meta
sidebar:

    order: 7
---

Merge two attribute sets shallowly, right side trumps left

mergeAttrs :: attrs -> attrs -> attrs

# Example

```nix
mergeAttrs { a = 1; b = 2; } { b = 3; c = 4; }
=> { a = 1; b = 3; c = 4; }
```


# Aliases

- [lib.mergeAttrBy.cfg](/nix-doc-comments/reference/lib/mergeattrby/lib-mergeattrby-cfg)
- [lib.mergeAttrBy.flags](/nix-doc-comments/reference/lib/mergeattrby/lib-mergeattrby-flags)
- [lib.mergeAttrs](/nix-doc-comments/reference/lib/lib-mergeattrs)
- [lib.trivial.mergeAttrs](/nix-doc-comments/reference/lib/trivial/lib-trivial-mergeattrs)


