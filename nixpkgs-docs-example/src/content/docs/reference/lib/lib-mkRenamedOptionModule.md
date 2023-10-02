---
title: lib.mkRenamedOptionModule
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/modules.nix#L1136C27
description: lib.mkRenamedOptionModule
sidebar:

    order: 8
---

Return a module that causes a warning to be shown if the
specified "from" option is defined; the defined value is however
forwarded to the "to" option. This can be used to rename options
while providing backward compatibility. For example,

mkRenamedOptionModule [ "boot" "copyKernels" ] [ "boot" "loader" "grub" "copyKernels" ]

forwards any definitions of boot.copyKernels to
boot.loader.grub.copyKernels while printing a warning.

This also copies over the priority from the aliased option to the
non-aliased option.


# Aliases

- [lib.modules.mkRenamedOptionModule](./reference/lib/modules/lib-modules-mkRenamedOptionModule)


