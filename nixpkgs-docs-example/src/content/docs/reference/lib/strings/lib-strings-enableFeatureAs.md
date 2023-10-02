---
title: lib.strings.enableFeatureAs
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L1161C21
description: lib.strings.enableFeatureAs
sidebar:

    order: 7
---

Create an --{enable-<feat>=<value>,disable-<feat>} string that can be passed to
standard GNU Autoconf scripts.

# Example

```nix
enableFeatureAs true "shared" "foo"
=> "--enable-shared=foo"
enableFeatureAs false "shared" (throw "ignored")
=> "--disable-shared"
```


# Aliases

- [lib.enableFeatureAs](./reference/lib/lib-enableFeatureAs)


