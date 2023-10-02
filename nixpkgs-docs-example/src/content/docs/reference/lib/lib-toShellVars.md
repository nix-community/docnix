---
title: lib.toShellVars
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L715C17
description: lib.toShellVars
sidebar:

    order: 8
---

Translate an attribute set into corresponding shell variable declarations
using `toShellVar`.

# Example

```nix
let
foo = "value";
bar = foo;
in ''
${toShellVars { inherit foo bar; }}
[[ "$foo" == "$bar" ]]
''
```

# Type

```haskell
attrsOf (string | listOf string | attrsOf string) -> string
```


# Aliases

- [lib.strings.toshellvars](/nix-doc-comments/reference/lib/strings/lib-strings-toshellvars)


