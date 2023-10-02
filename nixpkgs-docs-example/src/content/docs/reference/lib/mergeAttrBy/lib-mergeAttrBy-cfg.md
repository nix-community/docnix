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

- [lib.mergeAttrBy.flags](reference/lib/mergeAttrBy/lib-mergeAttrBy-flags)
- [lib.mergeAttrBy.meta](reference/lib/mergeAttrBy/lib-mergeAttrBy-meta)
- [lib.mergeAttrs](reference/lib/lib-mergeAttrs)
- [lib.trivial.mergeAttrs](reference/lib/trivial/lib-trivial-mergeAttrs)


