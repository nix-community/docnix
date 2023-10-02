---
title: lib.strings.toInt
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L1343C11
description: lib.strings.toInt
sidebar:

    order: 7
---

Parse a string as an int. Does not support parsing of integers with preceding zero due to
ambiguity between zero-padded and octal numbers. See toIntBase10.

# Example

```nix
toInt "1337"
=> 1337

toInt "-4"
=> -4

toInt " 123 "
=> 123

toInt "00024"
=> error: Ambiguity in interpretation of 00024 between octal and zero padded integer.

toInt "3.14"
=> error: floating point JSON numbers are not supported
```

# Type

```haskell
string -> int
```


# Aliases

- [lib.toInt](/nix-doc-comments/reference/lib/lib-toInt)


