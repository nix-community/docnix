---
title: lib.strings.getVersion
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L1025C16
description: lib.strings.getVersion
sidebar:

    order: 7
---

This function takes an argument that's either a derivation or a
derivation's "name" attribute and extracts the version part from that
argument.

# Example

```nix
getVersion "youtube-dl-2016.01.01"
=> "2016.01.01"
getVersion pkgs.youtube-dl
=> "2016.01.01"
```


# Aliases

- [lib.getversion](/nix-doc-comments/reference/lib/lib-getversion)


