---
title: lib.escapeShellArg
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L613C20
description: escapeShellArg
---

Quote string to be used safely within the Bourne shell.

# Example

```nix
escapeShellArg "esc'ape\nme"
=> "'esc'\\''ape\nme'"
```

# Type

```haskell
escapeShellArg :: string -> string
```
