---
title: builtins.zipAttrsWith
editUrl: false
description: builtins.zipAttrsWith
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 0
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


# Aliases

- [lib.attrsets.zip](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-zip)
- [lib.attrsets.zipAttrsWith](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-zipattrswith)
- [lib.zip](/nix-doc-comments/reference/lib/lib-zip)
- [lib.zipAttrsWith](/nix-doc-comments/reference/lib/lib-zipattrswith)


