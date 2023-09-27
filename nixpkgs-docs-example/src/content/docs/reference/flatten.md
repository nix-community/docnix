---
title: lib.flatten
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L205C13
description: flatten
---

Flatten the argument into a single list; that is, nested lists are
spliced into the top-level lists.

# Example

```nix
flatten [1 [2 [3] 4] 5]
=> [1 2 3 4 5]
flatten 1
=> [1]
```
