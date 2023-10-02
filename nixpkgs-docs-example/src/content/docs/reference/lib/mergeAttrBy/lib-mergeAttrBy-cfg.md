---
title: lib.mergeAttrBy.cfg
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/trivial.nix#L178C5
description: lib.mergeAttrBy.cfg
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

- [lib.mergeattrby.flags](/nix-doc-comments/reference/lib/mergeattrby/lib-mergeattrby-flags)
- [lib.mergeattrby.meta](/nix-doc-comments/reference/lib/mergeattrby/lib-mergeattrby-meta)
- [lib.mergeattrs](/nix-doc-comments/reference/lib/lib-mergeattrs)
- [lib.trivial.mergeattrs](/nix-doc-comments/reference/lib/trivial/lib-trivial-mergeattrs)


