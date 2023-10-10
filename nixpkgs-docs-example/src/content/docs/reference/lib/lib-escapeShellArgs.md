---
title: lib.escapeShellArgs
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/strings.nix#L167C5
description: lib.escapeShellArgs
sidebar:

    order: 8
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

- [lib.strings.escapeShellArgs](/nix-doc-comments/reference/lib/strings/lib-strings-escapeshellargs)


