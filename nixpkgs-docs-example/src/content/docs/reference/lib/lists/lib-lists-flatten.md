---
title: lib.lists.flatten
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/lists.nix#L205C13
description: lib.lists.flatten
sidebar:

    order: 7
---

Flatten the argument into a single list; that is, nested lists are
spliced into the top-level lists.

# Example

```nix
flatten [1 [2 [3] 4] 5]
=> [1 2 3 4 5]
flatten 1
=> [1]
```


# Aliases

- [lib.flatten](/nix-doc-comments/reference/lib/lib-flatten)


