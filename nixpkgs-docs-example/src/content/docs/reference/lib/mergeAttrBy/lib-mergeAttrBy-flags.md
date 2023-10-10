---
title: lib.mergeAttrBy.flags
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/trivial.nix#L178C5
description: lib.mergeAttrBy.flags
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
- [lib.mergeAttrBy.meta](/nix-doc-comments/reference/lib/mergeattrby/lib-mergeattrby-meta)
- [lib.mergeAttrs](/nix-doc-comments/reference/lib/lib-mergeattrs)
- [lib.trivial.mergeAttrs](/nix-doc-comments/reference/lib/trivial/lib-trivial-mergeattrs)


