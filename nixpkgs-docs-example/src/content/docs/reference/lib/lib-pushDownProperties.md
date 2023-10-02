---
title: lib.pushDownProperties
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/modules.nix#L879C24
description: lib.pushDownProperties
sidebar:

    order: 8
---

Given a config set, expand mkMerge properties, and push down the
other properties into the children.  The result is a list of
config sets that do not have properties at top-level.  For
example,

mkMerge [ { boot = set1; } (mkIf cond { boot = set2; services = set3; }) ]

is transformed into

[ { boot = set1; } { boot = mkIf cond set2; services = mkIf cond set3; } ].

This transform is the critical step that allows mkIf conditions
to refer to the full configuration without creating an infinite
recursion.


# Aliases

- [lib.modules.pushDownProperties](/reference/libmodules.pushDownProperties)


