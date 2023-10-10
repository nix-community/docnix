---
title: lib.hasPrefix
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/strings.nix#L371C5
description: lib.hasPrefix
sidebar:

    order: 8
---

Determine whether a string has given prefix.

# Example

```nix
hasPrefix "foo" "foobar"
=> true
hasPrefix "foo" "barfoo"
=> false
```

# Type

```
hasPrefix :: string -> string -> bool
```


# Aliases

- [lib.strings.hasPrefix](/nix-doc-comments/reference/lib/strings/lib-strings-hasprefix)


