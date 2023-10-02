---
title: lib.mkChangedOptionModule
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/modules.nix#L1244C27
description: lib.mkChangedOptionModule
sidebar:

    order: 8
---

Single "from" version of mkMergedOptionModule.
Return a module that causes a warning to be shown if the "from" option is
defined; the defined value can be used in the "mergeFn" to set the "to"
value.
This function can be used to change an option into another that has a
different type.

"mergeFn" takes the module "config" as a parameter and must return a value of
"to" option type.

mkChangedOptionModule [ "a" "b" "c" ] [ "x" "y" "z" ]
(config:
let value = getAttrFromPath [ "a" "b" "c" ] config;
in
if   value > 100 then "high"
else "normal")

- options.a.b.c is a removed int option
- options.x.y.z is a new str option that supersedes a.b.c

This show a warning if a.b.c is set, and set the value of x.y.z to the
result of the change function


# Aliases

- [lib.modules.mkChangedOptionModule](reference/lib/modules/lib-modules-mkChangedOptionModule)


