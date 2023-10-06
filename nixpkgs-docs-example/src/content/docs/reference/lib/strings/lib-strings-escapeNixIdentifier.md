---
title: lib.strings.escapeNixIdentifier
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L771C25
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



