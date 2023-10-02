---
title: lib.getName
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L1004C13
description: lib.getName
sidebar:

    order: 8
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

- [lib.strings.getName](./reference/lib/strings/lib-strings-getName)


