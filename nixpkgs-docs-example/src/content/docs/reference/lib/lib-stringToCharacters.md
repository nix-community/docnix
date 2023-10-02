---
title: lib.stringToCharacters
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L487C24
description: lib.stringToCharacters
sidebar:

    order: 8
---

Convert a string to a list of characters (i.e. singleton strings).
This allows you to, e.g., map a function over each character.  However,
note that this will likely be horribly inefficient; Nix is not a
general purpose programming language. Complex string manipulations
should, if appropriate, be done in a derivation.
Also note that Nix treats strings as a list of bytes and thus doesn't
handle unicode.

# Example

```nix
stringToCharacters ""
=> [ ]
stringToCharacters "abc"
=> [ "a" "b" "c" ]
stringToCharacters "🦄"
=> [ "�" "�" "�" "�" ]
```

# Type

```haskell
stringToCharacters :: string -> [string]
```


# Aliases

- [lib.strings.stringToCharacters](/reference/libstrings.stringToCharacters)


