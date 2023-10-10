---
title: lib.withFeatureAs
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/strings.nix#L1193C19
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

- [lib.strings.withFeatureAs](/nix-doc-comments/reference/lib/strings/lib-strings-withfeatureas)


