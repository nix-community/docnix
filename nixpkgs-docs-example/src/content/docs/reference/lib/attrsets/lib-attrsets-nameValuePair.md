---
title: lib.attrsets.nameValuePair
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/attrsets.nix#L603C5
description: lib.attrsets.nameValuePair
sidebar:

    order: 7
---

Utility function that creates a `{name, value}` pair as expected by `builtins.listToAttrs`.

# Example

```nix
nameValuePair "some" 6
=> { name = "some"; value = 6; }
```

# Type

```
nameValuePair :: String -> Any -> { name :: String; value :: Any; }
```


# Aliases

- [lib.nameValuePair](/nix-doc-comments/reference/lib/lib-namevaluepair)


