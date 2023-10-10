---
title: lib.removePrefix
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/strings.nix#L898C5
description: lib.removePrefix
sidebar:

    order: 8
---

Return a string without the specified prefix, if the prefix matches.

# Example

```nix
removePrefix "foo." "foo.bar.baz"
=> "bar.baz"
removePrefix "xxx" "foo.bar.baz"
=> "foo.bar.baz"
```

# Type

```
string -> string -> string
```


# Aliases

- [lib.strings.removePrefix](/nix-doc-comments/reference/lib/strings/lib-strings-removeprefix)


