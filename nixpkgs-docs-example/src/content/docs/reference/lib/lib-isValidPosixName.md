---
title: lib.isValidPosixName
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/strings.nix#L651C22
description: lib.isValidPosixName
sidebar:

    order: 8
---

Test whether the given name is a valid POSIX shell variable name.

# Example

```nix
isValidPosixName "foo_bar000"
=> true
isValidPosixName "0-bad.jpg"
=> false
```

# Type

```
string -> bool
```


# Aliases

- [lib.strings.isValidPosixName](/nix-doc-comments/reference/lib/strings/lib-strings-isvalidposixname)


