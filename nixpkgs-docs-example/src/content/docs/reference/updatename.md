---
title: lib.updateName
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/meta.nix#L47C16
description: updateName
---

Like `setName`, but takes the previous name as an argument.

# Example

```nix
updateName (oldName: oldName + "-experimental") somePkg
```
