---
title: lib.showAttrPath
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/attrsets.nix#L1156C5
description: lib.showAttrPath
sidebar:

    order: 8
---

Turns a list of strings into a human-readable description of those
strings represented as an attribute path. The result of this function is
not intended to be machine-readable.
Create a new attribute set with `value` set at the nested attribute location specified in `attrPath`.

# Example

```nix
showAttrPath [ "foo" "10" "bar" ]
=> "foo.\"10\".bar"
showAttrPath []
=> "<root attribute path>"
```

# Type

```
showAttrPath :: [String] -> String
```


# Aliases

- [lib.attrsets.showAttrPath](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-showattrpath)


