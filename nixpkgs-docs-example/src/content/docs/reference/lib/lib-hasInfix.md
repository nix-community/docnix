---
title: lib.hasInfix
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/strings.nix#L449C14
description: lib.hasInfix
sidebar:

    order: 8
---

Determine whether a string contains the given infix

# Example

```nix
hasInfix "bc" "abcd"
=> true
hasInfix "ab" "abcd"
=> true
hasInfix "cd" "abcd"
=> true
hasInfix "foo" "abcd"
=> false
```

# Type

```
hasInfix :: string -> string -> bool
```


# Aliases

- [lib.strings.hasInfix](/nix-doc-comments/reference/lib/strings/lib-strings-hasinfix)


