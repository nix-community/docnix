---
title: lib.attrsets.updateManyAttrsByPath
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/attrsets.nix#L276C6
description: lib.attrsets.updateManyAttrsByPath
sidebar:

    order: 7
---

Update or set specific paths of an attribute set.

Takes a list of updates to apply and an attribute set to apply them to,
and returns the attribute set with the updates applied. Updates are
represented as `{ path = ...; update = ...; }` values, where `path` is a
list of strings representing the attribute path that should be updated,
and `update` is a function that takes the old value at that attribute path
as an argument and returns the new
value it should be.

Properties:

- Updates to deeper attribute paths are applied before updates to more
shallow attribute paths

- Multiple updates to the same attribute path are applied in the order
they appear in the update list

- If any but the last `path` element leads into a value that is not an
attribute set, an error is thrown

- If there is an update for an attribute path that doesn't exist,
accessing the argument in the update function causes an error, but
intermediate attribute sets are implicitly created as needed

# Example

```nix
updateManyAttrsByPath [
{
path = [ "a" "b" ];
update = old: { d = old.c; };
}
{
path = [ "a" "b" "c" ];
update = old: old + 1;
}
{
path = [ "x" "y" ];
update = old: "xy";
}
] { a.b.c = 0; }
=> { a = { b = { d = 1; }; }; x = { y = "xy"; }; }
```

# Type

```haskell
updateManyAttrsByPath :: [{ path :: [String]; update :: (Any -> Any); }] -> AttrSet -> AttrSet
```


# Aliases

- [lib.updateManyAttrsByPath](/reference/libupdateManyAttrsByPath)


