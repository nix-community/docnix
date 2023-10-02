---
title: lib.groupBy
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: lib.groupBy
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 8
---

Groups elements of *list* together by the string returned from the
function *f* called on each element. It returns an attribute set
where each attribute value contains the elements of *list* that are
mapped to the same corresponding attribute name returned by *f*.

For example,

```nix
builtins.groupBy (builtins.substring 0 1) ["foo" "bar" "baz"]
```

evaluates to

```nix
{ b = [ "bar" "baz" ]; f = [ "foo" ]; }
```


# Aliases

- [builtins.groupby](/nix-doc-comments/reference/builtins/builtins-groupby)
- [lib.lists.groupby](/nix-doc-comments/reference/lib/lists/lib-lists-groupby)


