---
title: lib.attrsets.foldAttrs
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/attrsets.nix#L508C5
description: lib.attrsets.foldAttrs
sidebar:

    order: 7
---

Apply fold functions to values grouped by key.

# Example

```nix
foldAttrs (item: acc: [item] ++ acc) [] [{ a = 2; } { a = 3; }]
=> { a = [ 2 3 ]; }
```

# Type

```
foldAttrs :: (Any -> Any -> Any) -> Any -> [AttrSets] -> Any
```


# Aliases

- [lib.foldAttrs](/nix-doc-comments/reference/lib/lib-foldattrs)


