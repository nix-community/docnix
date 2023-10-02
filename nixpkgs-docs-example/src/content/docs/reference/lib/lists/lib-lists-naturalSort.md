---
title: lib.lists.naturalSort
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L814C17
description: lib.lists.naturalSort
sidebar:

    order: 7
---

Sort list using "Natural sorting".
Numeric portions of strings are sorted in numeric order.

# Example

```nix
naturalSort ["disk11" "disk8" "disk100" "disk9"]
=> ["disk8" "disk9" "disk11" "disk100"]
naturalSort ["10.46.133.149" "10.5.16.62" "10.54.16.25"]
=> ["10.5.16.62" "10.46.133.149" "10.54.16.25"]
naturalSort ["v0.2" "v0.15" "v0.0.9"]
=> [ "v0.0.9" "v0.2" "v0.15" ]
```


# Aliases

- [lib.naturalSort](reference/lib/lib-naturalSort)


