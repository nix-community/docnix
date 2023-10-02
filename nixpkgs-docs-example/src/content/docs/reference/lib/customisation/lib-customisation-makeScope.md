---
title: lib.customisation.makeScope
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/customisation.nix#L279C15
description: lib.customisation.makeScope
sidebar:

    order: 7
---

Make a set of packages with a common scope. All packages called
with the provided `callPackage` will be evaluated with the same
arguments. Any package in the set may depend on any other. The
`overrideScope'` function allows subsequent modification of the package
set in a consistent way, i.e. all packages in the set will be
called with the overridden packages. The package sets may be
hierarchical: the packages in the set are called with the scope
provided by `newScope` and the set provides a `newScope` attribute
which can form the parent scope for later package sets.


# Aliases

- [lib.makeScope](/nix-doc-comments/reference/lib/lib-makeScope)


