---
title: lib.options.mkEnableOption
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/options.nix#L116C5
description: lib.options.mkEnableOption
sidebar:

    order: 7
---

Creates an Option attribute set for a boolean value option i.e an
option to be toggled on or off:

# Example

```nix
mkEnableOption "foo"
=> { _type = "option"; default = false; description = "Whether to enable foo."; example = true; type = { ... }; }
```


# Aliases

- [lib.mkEnableOption](/nix-doc-comments/reference/lib/lib-mkenableoption)


