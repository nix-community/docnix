---
title: lib.strings.enableFeature
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/strings.nix#L1144C19
description: lib.strings.enableFeature
sidebar:

    order: 7
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

- [lib.enableFeature](/nix-doc-comments/reference/lib/lib-enablefeature)


