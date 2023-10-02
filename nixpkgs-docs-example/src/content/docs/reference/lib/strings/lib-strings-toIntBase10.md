---
title: lib.strings.toIntBase10
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L1402C17
description: lib.strings.toIntBase10
sidebar:

    order: 7
---

Parse a string as a base 10 int. This supports parsing of zero-padded integers.

# Example

```nix
toIntBase10 "1337"
=> 1337

toIntBase10 "-4"
=> -4

toIntBase10 " 123 "
=> 123

toIntBase10 "00024"
=> 24

toIntBase10 "3.14"
=> error: floating point JSON numbers are not supported
```

# Type

```haskell
string -> int
```


# Aliases

- [lib.toIntBase10](/reference/libtoIntBase10)


