---
title: lib.strings.fixedWidthString
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/strings.nix#L1215C22
description: lib.strings.fixedWidthString
sidebar:

    order: 7
---

Create a fixed width string with additional prefix to match
required width.

This function will fail if the input string is longer than the
requested length.

# Example

```nix
fixedWidthString 5 "0" (toString 15)
=> "00015"
```

# Type

```
fixedWidthString :: int -> string -> string -> string
```


# Aliases

- [lib.fixedWidthString](/nix-doc-comments/reference/lib/lib-fixedwidthstring)


