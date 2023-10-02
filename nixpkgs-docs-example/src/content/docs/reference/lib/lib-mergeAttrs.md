---
title: lib.mergeAttrs
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/trivial.nix#L178C5
description: lib.mergeAttrs
sidebar:

    order: 8
---

Merge two attribute sets shallowly, right side trumps left

mergeAttrs :: attrs -> attrs -> attrs

# Example

```nix
mergeAttrs { a = 1; b = 2; } { b = 3; c = 4; }
=> { a = 1; b = 3; c = 4; }
```


# Aliases

- [lib.mergeAttrBy.cfg](/reference/libmergeAttrBy.cfg)
- [lib.mergeAttrBy.flags](/reference/libmergeAttrBy.flags)
- [lib.mergeAttrBy.meta](/reference/libmergeAttrBy.meta)
- [lib.trivial.mergeAttrs](/reference/libtrivial.mergeAttrs)


