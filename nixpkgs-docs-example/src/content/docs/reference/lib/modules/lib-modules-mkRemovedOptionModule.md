---
title: lib.modules.mkRemovedOptionModule
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L1106C27
description: lib.modules.mkRemovedOptionModule
sidebar:

    order: 7
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

- [lib.mkRemovedOptionModule](/nix-doc-comments/reference/lib/lib-mkremovedoptionmodule)


