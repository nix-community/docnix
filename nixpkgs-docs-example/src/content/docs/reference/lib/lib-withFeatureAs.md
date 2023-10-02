---
title: lib.withFeatureAs
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L1193C19
description: lib.withFeatureAs
sidebar:

    order: 8
---

Create an --{with-<feat>=<value>,without-<feat>} string that can be passed to
standard GNU Autoconf scripts.

# Example

```nix
withFeatureAs true "shared" "foo"
=> "--with-shared=foo"
withFeatureAs false "shared" (throw "ignored")
=> "--without-shared"
```


# Aliases

- [lib.strings.withFeatureAs](/reference/libstrings.withFeatureAs)


