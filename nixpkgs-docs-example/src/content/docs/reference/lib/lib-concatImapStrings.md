---
title: lib.concatImapStrings
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/strings.nix#L97C23
description: lib.concatImapStrings
sidebar:

    order: 8
---

Like `concatMapStrings` except that the f functions also gets the
position as a parameter.

# Example

```nix
concatImapStrings (pos: x: "${toString pos}-${x}") ["foo" "bar"]
=> "1-foo2-bar"
```

# Type

```
concatImapStrings :: (int -> a -> string) -> [a] -> string
```


# Aliases

- [lib.strings.concatImapStrings](/nix-doc-comments/reference/lib/strings/lib-strings-concatimapstrings)


