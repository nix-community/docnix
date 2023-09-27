---
title: lib.versionAtLeast
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L988C20
description: versionAtLeast
---

Return true if string v1 denotes a version equal to or newer than v2.

# Example

```nix
versionAtLeast "1.1" "1.0"
=> true
versionAtLeast "1.1" "1.1"
=> true
versionAtLeast "1.1" "1.2"
=> false
```
