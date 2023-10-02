---
title: lib.filesystem.haskellPathsInDir
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/filesystem.nix#L118C5
description: lib.filesystem.haskellPathsInDir
sidebar:

    order: 7
---

A map of all haskell packages defined in the given path,
identified by having a cabal file with the same name as the
directory itself.

# Type

```haskell
Path -> Map String Path
```


