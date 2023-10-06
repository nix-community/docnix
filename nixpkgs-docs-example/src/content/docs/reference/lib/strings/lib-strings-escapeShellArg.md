---
title: lib.strings.escapeShellArg
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L613C20
description: lib.strings.escapeShellArg
sidebar:

    order: 7
---

Quote string to be used safely within the Bourne shell.

# Example

```nix
escapeShellArg "esc'ape\nme"
=> "'esc'\\''ape\nme'"
```

# Type

```
escapeShellArg :: string -> string
```


# Aliases

- [lib.escapeShellArg](/nix-doc-comments/reference/lib/lib-escapeshellarg)


