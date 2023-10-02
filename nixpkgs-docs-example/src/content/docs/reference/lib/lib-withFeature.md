---
title: lib.withFeature
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L1176C17
description: lib.withFeature
sidebar:

    order: 8
---

Create an --{with,without}-<feat> string that can be passed to
standard GNU Autoconf scripts.

# Example

```nix
withFeature true "shared"
=> "--with-shared"
withFeature false "shared"
=> "--without-shared"
```


# Aliases

- [lib.strings.withFeature](./reference/lib/strings/lib-strings-withFeature)


