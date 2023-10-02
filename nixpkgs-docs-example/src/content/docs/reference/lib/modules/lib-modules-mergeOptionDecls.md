---
title: lib.modules.mergeOptionDecls
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/modules.nix#L748C4
description: lib.modules.mergeOptionDecls
sidebar:

    order: 7
---

Merge multiple option declarations into a single declaration.  In
general, there should be only one declaration of each option.
The exception is the ‘options’ attribute, which specifies
sub-options.  These can be specified multiple times to allow one
module to add sub-options to an option declared somewhere else
(e.g. multiple modules define sub-options for ‘fileSystems’).

'loc' is the list of attribute names where the option is located.

'opts' is a list of modules.  Each module has an options attribute which
correspond to the definition of 'loc' in 'opt.file'.


# Aliases

- [lib.mergeOptionDecls](./reference/lib/lib-mergeOptionDecls)


