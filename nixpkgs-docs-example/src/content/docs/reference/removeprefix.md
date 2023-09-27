---
title: lib.removePrefix
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L898C5
description: removePrefix
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
