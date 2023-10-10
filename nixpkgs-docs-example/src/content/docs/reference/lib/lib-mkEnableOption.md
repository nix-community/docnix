---
title: lib.mkEnableOption
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/options.nix#L116C5
description: lib.mkEnableOption
sidebar:

    order: 8
---

Creates an Option attribute set for a boolean value option i.e an
option to be toggled on or off:

# Example

```nix
mkEnableOption "foo"
=> { _type = "option"; default = false; description = "Whether to enable foo."; example = true; type = { ... }; }
```


# Aliases

- [lib.options.mkEnableOption](/nix-doc-comments/reference/lib/options/lib-options-mkenableoption)


