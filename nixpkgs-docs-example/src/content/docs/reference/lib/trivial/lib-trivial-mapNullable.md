---
title: lib.trivial.mapNullable
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/trivial.nix#L214C5
description: lib.trivial.mapNullable
sidebar:

    order: 7
---

Apply function if the supplied argument is non-null.

# Example

```nix
mapNullable (x: x+1) null
=> null
mapNullable (x: x+1) 22
=> 23
```


# Aliases

- [lib.mapNullable](/nix-doc-comments/reference/lib/lib-mapnullable)


