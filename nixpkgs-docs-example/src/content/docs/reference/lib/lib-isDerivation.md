---
title: lib.isDerivation
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/attrsets.nix#L806C5
description: lib.isDerivation
sidebar:

    order: 8
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

```haskell
isDerivation :: Any -> Bool
```


# Aliases

- [lib.attrsets.isderivation](/nix-doc-comments/reference/lib/attrsets/lib-attrsets-isderivation)


