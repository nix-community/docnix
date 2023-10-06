---
title: lib.toShellVars
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L715C17
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

```
attrsOf (string | listOf string | attrsOf string) -> string
```


# Aliases

- [lib.strings.toShellVars](/nix-doc-comments/reference/lib/strings/lib-strings-toshellvars)


