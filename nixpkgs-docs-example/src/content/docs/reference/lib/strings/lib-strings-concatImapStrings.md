---
title: lib.strings.concatImapStrings
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L97C23
description: lib.strings.concatImapStrings
sidebar:

    order: 7
---

Like `concatMapStrings` except that the f functions also gets the
position as a parameter.

# Example

```nix
concatImapStrings (pos: x: "${toString pos}-${x}") ["foo" "bar"]
=> "1-foo2-bar"
```

# Type

```haskell
concatImapStrings :: (int -> a -> string) -> [a] -> string
```


# Aliases

- [lib.concatImapStrings](/reference/libconcatImapStrings)


