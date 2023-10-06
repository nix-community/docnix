---
title: lib.escapeShellArg
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L613C20
description: lib.escapeShellArg
sidebar:

    order: 8
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

- [lib.strings.escapeShellArg](/nix-doc-comments/reference/lib/strings/lib-strings-escapeshellarg)


