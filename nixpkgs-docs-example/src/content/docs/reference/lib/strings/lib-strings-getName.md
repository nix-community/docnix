---
title: lib.strings.getName
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L1004C13
description: lib.strings.getName
sidebar:

    order: 7
---

This function takes an argument that's either a derivation or a
derivation's "name" attribute and extracts the name part from that
argument.

# Example

```nix
getName "youtube-dl-2016.01.01"
=> "youtube-dl"
getName pkgs.youtube-dl
=> "youtube-dl"
```


# Aliases

- [lib.getName](reference/lib/lib-getName)


