---
title: builtins.getEnv
editUrl: false
description: builtins.getEnv
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 0
---

`getEnv` returns the value of the environment variable *s*, or an
empty string if the variable doesn’t exist. This function should be
used with care, as it can introduce all sorts of nasty environment
dependencies in your Nix expression.

`getEnv` is used in Nix Packages to locate the file
`~/.nixpkgs/config.nix`, which contains user-local settings for Nix
Packages. (That is, it does a `getEnv "HOME"` to locate the user’s
home directory.)



