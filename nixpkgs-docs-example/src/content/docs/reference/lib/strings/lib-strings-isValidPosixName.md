---
title: lib.strings.isValidPosixName
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L651C22
description: lib.strings.isValidPosixName
sidebar:

    order: 7
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

```haskell
string -> bool
```


# Aliases

- [lib.isvalidposixname](/nix-doc-comments/reference/lib/lib-isvalidposixname)


