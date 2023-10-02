---
title: lib.strings.removePrefix
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L898C5
description: lib.strings.removePrefix
sidebar:

    order: 7
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

```haskell
string -> string -> string
```


# Aliases

- [lib.removeprefix](/nix-doc-comments/reference/lib/lib-removeprefix)


