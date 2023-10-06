---
title: lib.strings.withFeature
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L1176C17
description: lib.strings.withFeature
sidebar:

    order: 7
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

- [lib.withFeature](/nix-doc-comments/reference/lib/lib-withfeature)


