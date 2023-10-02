---
title: lib.functionArgs
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/trivial.nix#L589C18
description: lib.functionArgs
sidebar:

    order: 8
---

Extract the expected function arguments from a function.
This works both with nix-native { a, b ? foo, ... }: style
functions and functions with args set with 'setFunctionArgs'. It
has the same return type and semantics as builtins.functionArgs.
setFunctionArgs : (a → b) → Map String Bool.


# Aliases

- [lib.trivial.functionArgs](/reference/libtrivial.functionArgs)


