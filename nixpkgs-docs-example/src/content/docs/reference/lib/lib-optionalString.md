---
title: lib.optionalString
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L347C5
description: lib.optionalString
sidebar:

    order: 8
---

Depending on the boolean `cond', return either the given string
or the empty string. Useful to concatenate against a bigger string.

# Example

```nix
optionalString true "some-string"
=> "some-string"
optionalString false "some-string"
=> ""
```

# Type

```haskell
optionalString :: bool -> string -> string
```


# Aliases

- [lib.strings.optionalString](./reference/lib/strings/lib-strings-optionalString)


