---
title: lib.enableFeature
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L1144C19
description: lib.enableFeature
sidebar:

    order: 8
---

Create an --{enable,disable}-<feat> string that can be passed to
standard GNU Autoconf scripts.

# Example

```nix
enableFeature true "shared"
=> "--enable-shared"
enableFeature false "shared"
=> "--disable-shared"
```


# Aliases

- [lib.strings.enableFeature](reference/lib/strings/lib-strings-enableFeature)


