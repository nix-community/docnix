---
title: lib.strings.floatToString
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L1252C19
description: lib.strings.floatToString
sidebar:

    order: 7
---

Convert a float to a string, but emit a warning when precision is lost
during the conversion

# Example

```nix
floatToString 0.000001
=> "0.000001"
floatToString 0.0000001
=> trace: warning: Imprecise conversion from float to string 0.000000
   "0.000000"
```



