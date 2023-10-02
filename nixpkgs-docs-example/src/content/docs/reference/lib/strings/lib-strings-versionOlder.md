---
title: lib.strings.versionOlder
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L972C18
description: lib.strings.versionOlder
sidebar:

    order: 7
---

Return true if string v1 denotes a version older than v2.

# Example

```nix
versionOlder "1.1" "1.2"
=> true
versionOlder "1.1" "1.1"
=> false
```


# Aliases

- [lib.versionOlder](reference/lib/lib-versionOlder)


