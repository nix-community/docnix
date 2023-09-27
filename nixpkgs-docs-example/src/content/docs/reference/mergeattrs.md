---
title: lib.mergeAttrs
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/trivial.nix#L178C5
description: mergeAttrs
---

Merge two attribute sets shallowly, right side trumps left

mergeAttrs :: attrs -> attrs -> attrs

# Example

```nix
mergeAttrs { a = 1; b = 2; } { b = 3; c = 4; }
=> { a = 1; b = 3; c = 4; }
```
