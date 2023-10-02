---
title: lib.nameValuePair
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/attrsets.nix#L603C5
description: lib.nameValuePair
sidebar:

    order: 8
---

Utility function that creates a `{name, value}` pair as expected by `builtins.listToAttrs`.

# Example

```nix
nameValuePair "some" 6
=> { name = "some"; value = 6; }
```

# Type

```haskell
nameValuePair :: String -> Any -> { name :: String; value :: Any; }
```


# Aliases

- [lib.attrsets.nameValuePair](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-nameValuePair)


