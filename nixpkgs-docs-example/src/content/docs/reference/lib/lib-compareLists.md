---
title: lib.compareLists
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/lists.nix#L787C18
description: lib.compareLists
sidebar:

    order: 8
---

Compare two lists element-by-element.

# Example

```nix
compareLists compare [] []
=> 0
compareLists compare [] [ "a" ]
=> -1
compareLists compare [ "a" ] []
=> 1
compareLists compare [ "a" "b" ] [ "a" "c" ]
=> -1
```


# Aliases

- [lib.lists.compareLists](/nix-doc-comments/reference/lib/lists/lib-lists-comparelists)


