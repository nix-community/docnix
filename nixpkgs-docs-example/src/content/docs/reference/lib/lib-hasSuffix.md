---
title: lib.hasSuffix
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/strings.nix#L406C5
description: lib.hasSuffix
sidebar:

    order: 8
---

Determine whether a string has given suffix.

# Example

```nix
hasSuffix "foo" "foobar"
=> false
hasSuffix "foo" "barfoo"
=> true
```

# Type

```
hasSuffix :: string -> string -> bool
```


# Aliases

- [lib.strings.hasSuffix](/nix-doc-comments/reference/lib/strings/lib-strings-hassuffix)


