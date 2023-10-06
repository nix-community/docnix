---
title: lib.strings.stringToCharacters
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L487C24
description: lib.strings.stringToCharacters
sidebar:

    order: 7
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

```
stringToCharacters :: string -> [string]
```


# Aliases

- [lib.stringToCharacters](/nix-doc-comments/reference/lib/lib-stringtocharacters)


