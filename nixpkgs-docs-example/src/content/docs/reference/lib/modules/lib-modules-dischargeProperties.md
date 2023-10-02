---
title: lib.modules.dischargeProperties
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/modules.nix#L900C25
description: lib.modules.dischargeProperties
sidebar:

    order: 7
---

Given a config value, expand mkMerge properties, and discharge
any mkIf conditions.  That is, this is the place where mkIf
conditions are actually evaluated.  The result is a list of
config values.  For example, ‘mkIf false x’ yields ‘[]’,
‘mkIf true x’ yields ‘[x]’, and

mkMerge [ 1 (mkIf true 2) (mkIf true (mkIf false 3)) ]

yields ‘[ 1 2 ]’.


# Aliases

- [lib.dischargeProperties](reference/lib/lib-dischargeProperties)


