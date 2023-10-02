---
title: lib.compareLists
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L787C18
description: lib.compareLists
sidebar:

    order: 8
---

Compare two lists element-by-element.

# Example

```nix
compareLists compare [] []
=> 0
compareLists compare [] [ "a" ]
=> -1
compareLists compare [ "a" ] []
=> 1
compareLists compare [ "a" "b" ] [ "a" "c" ]
=> -1
```


# Aliases

- [lib.lists.compareLists](/reference/liblists.compareLists)


