---
title: lib.singleton
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/lists.nix#L31C15
description: lib.singleton
sidebar:

    order: 8
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

- [lib.lists.singleton](/nix-doc-comments/reference/lib/lists/lib-lists-singleton)


