---
title: lib.strings.escapeNixIdentifier
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/strings.nix#L771C25
description: lib.strings.escapeNixIdentifier
sidebar:

    order: 7
---

Quotes a string if it can't be used as an identifier directly.

# Example

```nix
escapeNixIdentifier "hello"
=> "hello"
escapeNixIdentifier "0abc"
=> "\"0abc\""
```

# Type

```
string -> string
```



