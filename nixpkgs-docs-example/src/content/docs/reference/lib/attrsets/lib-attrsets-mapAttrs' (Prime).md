---
title: lib.attrsets.mapAttrs' (Prime)
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L652C5
description: lib.attrsets.mapAttrs'
sidebar:

    order: 7
---

Like `mapAttrs`, but allows the name of each attribute to be
changed in addition to the value.  The applied function should
return both the new name and value as a `nameValuePair`.

# Example

```nix
mapAttrs' (name: value: nameValuePair ("foo_" + name) ("bar-" + value))
   { x = "a"; y = "b"; }
=> { foo_x = "bar-a"; foo_y = "bar-b"; }
```

# Type

```
mapAttrs' :: (String -> Any -> { name :: String; value :: Any; }) -> AttrSet -> AttrSet
```


# Aliases

- [lib.mapAttrs'](/nix-doc-comments/reference/lib/lib-mapattrs' (prime))


