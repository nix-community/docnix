---
title: lib.attrsets.isDerivation
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/attrsets.nix#L806C5
description: lib.attrsets.isDerivation
sidebar:

    order: 7
---

Check whether the argument is a derivation. Any set with
`{ type = "derivation"; }` counts as a derivation.

# Example

```nix
nixpkgs = import <nixpkgs> {}
isDerivation nixpkgs.ruby
=> true
isDerivation "foobar"
=> false
```

# Type

```
isDerivation :: Any -> Bool
```


# Aliases

- [lib.isDerivation](/nix-doc-comments/reference/lib/lib-isderivation)


