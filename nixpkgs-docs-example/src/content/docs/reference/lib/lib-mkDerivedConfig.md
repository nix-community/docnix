---
title: lib.mkDerivedConfig
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/modules.nix#L1280C21
description: lib.mkDerivedConfig
sidebar:

    order: 8
---

mkDerivedConfig : Option a -> (a -> Definition b) -> Definition b

Create config definitions with the same priority as the definition of another option.
This should be used for option definitions where one option sets the value of another as a convenience.
For instance a config file could be set with a `text` or `source` option, where text translates to a `source`
value using `mkDerivedConfig options.text (pkgs.writeText "filename.conf")`.

It takes care of setting the right priority using `mkOverride`.


# Aliases

- [lib.modules.mkDerivedConfig](reference/lib/modules/lib-modules-mkDerivedConfig)


