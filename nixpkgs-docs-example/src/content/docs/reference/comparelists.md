---
title: lib.compareLists
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L787C18
description: compareLists
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
