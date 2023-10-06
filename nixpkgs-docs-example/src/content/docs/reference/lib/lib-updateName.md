---
title: lib.updateName
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L47C16
description: lib.updateName
sidebar:

    order: 8
---

Like `setName`, but takes the previous name as an argument.

# Example

```nix
updateName (oldName: oldName + "-experimental") somePkg
```


# Aliases

- [lib.meta.updateName](/nix-doc-comments/reference/lib/meta/lib-meta-updatename)


