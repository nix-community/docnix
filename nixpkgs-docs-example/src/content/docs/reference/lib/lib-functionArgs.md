---
title: lib.functionArgs
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/trivial.nix#L589C18
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

- [builtins.functionArgs](/nix-doc-comments/reference/builtins/builtins-functionargs)
- [lib.trivial.functionArgs](/nix-doc-comments/reference/lib/trivial/lib-trivial-functionargs)


