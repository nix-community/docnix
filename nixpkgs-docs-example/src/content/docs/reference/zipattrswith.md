---
title: lib.zipAttrsWith
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: zipAttrsWith
sidebar:
    badge: 
        text: Builtin
        variant: note

---

Transpose a list of attribute sets into an attribute set of lists,
then apply `mapAttrs`.

`f` receives two arguments: the attribute name and a non-empty
list of all values encountered for that attribute name.

The result is an attribute set where the attribute names are the
union of the attribute names in each element of `list`. The attribute
values are the return values of `f`.

```nix
builtins.zipAttrsWith
  (name: values: { inherit name values; })
  [ { a = "x"; } { a = "y"; b = "z"; } ]
```

evaluates to

```
{
  a = { name = "a"; values = [ "x" "y" ]; };
  b = { name = "b"; values = [ "z" ]; };
}
```
