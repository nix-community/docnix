---
title: lib.strings.escapeNixString
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/strings.nix#L733C21
description: lib.strings.escapeNixString
sidebar:

    order: 7
---

Turn a string into a Nix expression representing that string

# Example

```nix
escapeNixString "hello\${}\n"
=> "\"hello\\\${}\\n\""
```

# Type

```
string -> string
```



