---
title: lib.overrideExisting
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/attrsets.nix#L1127C5
description: lib.overrideExisting
sidebar:

    order: 8
---

Override only the attributes that are already present in the old set
useful for deep-overriding.

# Example

```nix
overrideExisting {} { a = 1; }
=> {}
overrideExisting { b = 2; } { a = 1; }
=> { b = 2; }
overrideExisting { a = 3; b = 2; } { a = 1; }
=> { a = 1; b = 2; }
```

# Type

```
overrideExisting :: AttrSet -> AttrSet -> AttrSet
```


# Aliases

- [lib.attrsets.overrideExisting](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-overrideexisting)


