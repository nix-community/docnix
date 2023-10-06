---
title: lib.strings.escapeC
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L572C13
description: lib.strings.escapeC
sidebar:

    order: 7
---

Escape occurrence of the element of `list` in `string` by
converting to its ASCII value and prefixing it with \\x.
Only works for printable ascii characters.

# Example

```nix
escapeC [" "] "foo bar"
=> "foo\\x20bar"
```

# Type

```
escapeC = [string] -> string -> string
```



