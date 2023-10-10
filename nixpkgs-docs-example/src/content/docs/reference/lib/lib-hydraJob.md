---
title: lib.hydraJob
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/customisation.nix#L239C14
description: lib.hydraJob
sidebar:

    order: 8
---

Strip a derivation of all non-essential attributes, returning
only those needed by hydra-eval-jobs. Also strictly evaluate the
result to ensure that there are no thunks kept alive to prevent
garbage collection.


# Aliases

- [lib.customisation.hydraJob](/nix-doc-comments/reference/lib/customisation/lib-customisation-hydrajob)


