---
title: lib.versions.pad
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L85C9
description: lib.versions.pad
sidebar:

    order: 7
---

Pad a version string with zeros to match the given number of components.

# Example

```nix
pad 3 "1.2"
=> "1.2.0"
pad 3 "1.3-rc1"
=> "1.3.0-rc1"
pad 3 "1.2.3.4"
=> "1.2.3"
```



