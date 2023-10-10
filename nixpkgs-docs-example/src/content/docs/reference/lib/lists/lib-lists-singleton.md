---
title: lib.lists.singleton
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/lists.nix#L31C15
description: lib.lists.singleton
sidebar:

    order: 7
---

Create a list consisting of a single element.  `singleton x` is
sometimes more convenient with respect to indentation than `[x]`
when x spans multiple lines.

# Example

```nix
singleton "foo"
=> [ "foo" ]
```

# Type

```
singleton :: a -> [a]
```


# Aliases

- [lib.singleton](/nix-doc-comments/reference/lib/lib-singleton)


