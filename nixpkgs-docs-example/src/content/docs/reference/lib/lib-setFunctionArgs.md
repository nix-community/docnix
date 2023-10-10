---
title: lib.setFunctionArgs
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/trivial.nix#L576C21
description: lib.setFunctionArgs
sidebar:

    order: 8
---

Add metadata about expected function arguments to a function.
The metadata should match the format given by
builtins.functionArgs, i.e. a set from expected argument to a bool
representing whether that argument has a default or not.
setFunctionArgs : (a → b) → Map String Bool → (a → b)

This function is necessary because you can't dynamically create a
function of the { a, b ? foo, ... }: format, but some facilities
like callPackage expect to be able to query expected arguments.


# Aliases

- [lib.trivial.setFunctionArgs](/nix-doc-comments/reference/lib/trivial/lib-trivial-setfunctionargs)


