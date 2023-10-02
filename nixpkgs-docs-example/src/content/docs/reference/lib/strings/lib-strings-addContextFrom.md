---
title: lib.strings.addContextFrom
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/strings.nix#L857C20
description: lib.strings.addContextFrom
sidebar:

    order: 7
---

Appends string context from another string.  This is an implementation
detail of Nix and should be used carefully.

Strings in Nix carry an invisible `context` which is a list of strings
representing store paths.  If the string is later used in a derivation
attribute, the derivation will properly populate the inputDrvs and
inputSrcs.

# Example

```nix
pkgs = import <nixpkgs> { };
addContextFrom pkgs.coreutils "bar"
=> "bar"
```


# Aliases

- [lib.addContextFrom](/reference/libaddContextFrom)


