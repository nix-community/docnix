---
title: lib.modules.mkMergedOptionModule
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/modules.nix#L1196C26
description: lib.modules.mkMergedOptionModule
sidebar:

    order: 7
---

Return a module that causes a warning to be shown if any of the "from"
option is defined; the defined values can be used in the "mergeFn" to set
the "to" value.
This function can be used to merge multiple options into one that has a
different type.

"mergeFn" takes the module "config" as a parameter and must return a value
of "to" option type.

mkMergedOptionModule
[ [ "a" "b" "c" ]
[ "d" "e" "f" ] ]
[ "x" "y" "z" ]
(config:
let value = p: getAttrFromPath p config;
in
if      (value [ "a" "b" "c" ]) == true then "foo"
else if (value [ "d" "e" "f" ]) == true then "bar"
else "baz")

- options.a.b.c is a removed boolean option
- options.d.e.f is a removed boolean option
- options.x.y.z is a new str option that combines a.b.c and d.e.f
functionality

This show a warning if any a.b.c or d.e.f is set, and set the value of
x.y.z to the result of the merge function


# Aliases

- [lib.mkMergedOptionModule](/reference/libmkMergedOptionModule)


