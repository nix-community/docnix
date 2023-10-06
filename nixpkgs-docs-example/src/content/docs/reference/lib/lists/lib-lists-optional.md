---
title: lib.lists.optional
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L442C14
description: lib.lists.optional
sidebar:

    order: 7
---

Return a singleton list or an empty list, depending on a boolean
value.  Useful when building lists with optional elements
(e.g. `++ optional (system == "i686-linux") firefox`).

# Example

```nix
optional true "foo"
=> [ "foo" ]
optional false "foo"
=> [ ]
```

# Type

```
optional :: bool -> a -> [a]
```


# Aliases

- [lib.optional](/nix-doc-comments/reference/lib/lib-optional)


