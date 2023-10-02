---
title: lib.modules.mergeAttrDefinitionsWithPrio
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/modules.nix#L982C34
description: lib.modules.mergeAttrDefinitionsWithPrio
sidebar:

    order: 7
---

Merge an option's definitions in a way that preserves the priority of the
individual attributes in the option value.

This does not account for all option semantics, such as readOnly.

# Type

```haskell
option -> attrsOf { highestPrio, value }
```



