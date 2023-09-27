---
title: lib.mkEnableOption
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/options.nix#L116C5
description: mkEnableOption
---

Creates an Option attribute set for a boolean value option i.e an
option to be toggled on or off:

# Example

```nix
mkEnableOption "foo"
=> { _type = "option"; default = false; description = "Whether to enable foo."; example = true; type = { ... }; }
```
