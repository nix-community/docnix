---
title: lib.optionalAttrs
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/attrsets.nix#L854C5
description: lib.optionalAttrs
sidebar:

    order: 8
---

If `cond` is true, return the attribute set `as`,
otherwise an empty attribute set.

# Example

```nix
optionalAttrs (true) { my = "set"; }
=> { my = "set"; }
optionalAttrs (false) { my = "set"; }
=> { }
```

# Type

```
optionalAttrs :: Bool -> AttrSet -> AttrSet
```


# Aliases

- [lib.attrsets.optionalAttrs](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-optionalattrs)


