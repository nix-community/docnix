---
title: lib.meta.updateName
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/meta.nix#L47C16
description: lib.meta.updateName
sidebar:

    order: 7
---

Like `setName`, but takes the previous name as an argument.

# Example

```nix
updateName (oldName: oldName + "-experimental") somePkg
```


# Aliases

- [lib.updateName](/reference/libupdateName)


