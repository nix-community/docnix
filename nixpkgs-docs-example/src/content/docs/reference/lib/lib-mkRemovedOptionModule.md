---
title: lib.mkRemovedOptionModule
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/modules.nix#L1106C27
description: lib.mkRemovedOptionModule
sidebar:

    order: 8
---

Return a module that causes a warning to be shown if the
specified option is defined. For example,

mkRemovedOptionModule [ "boot" "loader" "grub" "bootDevice" ] "<replacement instructions>"

causes a assertion if the user defines boot.loader.grub.bootDevice.

replacementInstructions is a string that provides instructions on
how to achieve the same functionality without the removed option,
or alternatively a reasoning why the functionality is not needed.
replacementInstructions SHOULD be provided!


# Aliases

- [lib.modules.mkRemovedOptionModule](/nix-doc-comments/reference/lib/modules/lib-modules-mkRemovedOptionModule)


