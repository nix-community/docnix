---
title: builtins.unsafeGetLambdaDoc
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: builtins.unsafeGetLambdaDoc
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 0
---

Returns an AttributeSet containing the `content` of a multiline doc-comment.

A doc-comment placed directly before the lambda is always valid.

The doc-comment can be placed before the atteribute path, if the lambda is directly assigned to an attribute name (see example).

Example:

```nix
builtins.unsafeGetLambdaDoc
    {
           
          # The id function

          * Bullet item
          * another item

          ## h2 markdown heading

          some more docs
        */
        foo = x: x;
    }.foo
```

evaluates to

```nix
{ content = "# The id function\n..."; isPrimop = false; position = { column = 23; file = ".../test.nix"; line = 14; }; }
```



