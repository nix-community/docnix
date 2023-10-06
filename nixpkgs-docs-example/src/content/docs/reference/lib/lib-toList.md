---
title: lib.toList
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L483C12
description: lib.toList
sidebar:

    order: 8
---

If argument is a list, return it; else, wrap it in a singleton
list.  If you're using this, you should almost certainly
reconsider if there isn't a more "well-typed" approach.

# Example

```nix
toList [ 1 2 ]
=> [ 1 2 ]
toList "hi"
=> [ "hi "]
```


# Aliases

- [lib.lists.toList](/nix-doc-comments/reference/lib/lists/lib-lists-tolist)


