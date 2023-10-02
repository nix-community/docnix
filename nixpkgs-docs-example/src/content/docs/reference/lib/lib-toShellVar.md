---
title: lib.toShellVar
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L679C16
description: lib.toShellVar
sidebar:

    order: 8
---

Translate a Nix value into a shell variable declaration, with proper escaping.

The value can be a string (mapped to a regular variable), a list of strings
(mapped to a Bash-style array) or an attribute set of strings (mapped to a
Bash-style associative array). Note that "string" includes string-coercible
values like paths or derivations.

Strings are translated into POSIX sh-compatible code; lists and attribute sets
assume a shell that understands Bash syntax (e.g. Bash or ZSH).

# Example

```nix
''
${toShellVar "foo" "some string"}
[[ "$foo" == "some string" ]]
''
```

# Type

```haskell
string -> (string | listOf string | attrsOf string) -> string
```


# Aliases

- [lib.strings.toShellVar](./reference/lib/strings/lib-strings-toShellVar)


