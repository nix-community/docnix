---
title: lib.lists.compareLists
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L787C18
description: lib.lists.compareLists
sidebar:

    order: 7
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

- [lib.compareLists](./reference/lib/lib-compareLists)


