---
title: lib.getFiles
editUrl: https://www.github.com/nixos/nix/blob/master/src/libexpr/primops.cc
description: getFiles
sidebar:
    badge: 
        text: Builtin
        variant: note

---

Apply the function *f* to each element in the list *list*. For
example,

```nix
map (x: "foo" + x) [ "bar" "bla" "abc" ]
```

evaluates to `[ "foobar" "foobla" "fooabc" ]`.
