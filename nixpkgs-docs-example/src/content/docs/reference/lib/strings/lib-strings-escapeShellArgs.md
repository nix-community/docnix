---
title: lib.strings.escapeShellArgs
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L167C5
description: lib.strings.escapeShellArgs
sidebar:

    order: 7
---

Maps a function over a list of strings and then concatenates the
result with the specified separator interspersed between
elements.

# Example

```nix
concatMapStringsSep "-" (x: toUpper x)  ["foo" "bar" "baz"]
=> "FOO-BAR-BAZ"
```

# Type

```
concatMapStringsSep :: string -> (a -> string) -> [a] -> string
```


# Aliases

- [lib.escapeShellArgs](/nix-doc-comments/reference/lib/lib-escapeshellargs)


