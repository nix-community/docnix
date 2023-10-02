---
title: lib.strings.charToInt
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L533C15
description: lib.strings.charToInt
sidebar:

    order: 7
---

Convert char to ascii value, must be in printable range

# Example

```nix
charToInt "A"
=> 65
charToInt "("
=> 40
```

# Type

```haskell
charToInt :: string -> int
```



