---
title: lib.strings.withFeatureAs
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L1193C19
description: lib.strings.withFeatureAs
sidebar:

    order: 7
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

- [lib.withfeatureas](/nix-doc-comments/reference/lib/lib-withfeatureas)


