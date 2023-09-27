---
title: lib.removeSuffix
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L939C5
description: removeSuffix
---

Return a string without the specified suffix, if the suffix matches.

# Example

```nix
removeSuffix "front" "homefront"
=> "home"
removeSuffix "xxx" "homefront"
=> "homefront"
```

# Type

```haskell
string -> string -> string
```
