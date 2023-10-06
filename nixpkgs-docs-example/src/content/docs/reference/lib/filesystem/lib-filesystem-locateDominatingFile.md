---
title: lib.filesystem.locateDominatingFile
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L145C5
description: lib.filesystem.locateDominatingFile
sidebar:

    order: 7
---

Find the first directory containing a file matching 'pattern'
upward from a given 'file'.
Returns 'null' if no directories contain a file matching 'pattern'.

# Type

```
RegExp -> Path -> Nullable { path : Path; matches : [ MatchResults ]; }
```



