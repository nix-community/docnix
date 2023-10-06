---
title: lib.attrsets.optionalAttrs
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L854C5
description: lib.attrsets.optionalAttrs
sidebar:

    order: 7
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

- [lib.optionalAttrs](/nix-doc-comments/reference/lib/lib-optionalattrs)


