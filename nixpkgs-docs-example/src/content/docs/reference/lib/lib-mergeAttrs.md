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

- [lib.mergeAttrBy.cfg](/nix-doc-comments/reference/lib/mergeAttrBy/lib-mergeAttrBy-cfg)
- [lib.mergeAttrBy.flags](/nix-doc-comments/reference/lib/mergeAttrBy/lib-mergeAttrBy-flags)
- [lib.mergeAttrBy.meta](/nix-doc-comments/reference/lib/mergeAttrBy/lib-mergeAttrBy-meta)
- [lib.trivial.mergeAttrs](/nix-doc-comments/reference/lib/trivial/lib-trivial-mergeAttrs)


