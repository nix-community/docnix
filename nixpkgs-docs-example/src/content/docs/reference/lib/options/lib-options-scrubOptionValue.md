---
title: lib.options.scrubOptionValue
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/options.nix#L361C22
description: lib.options.scrubOptionValue
sidebar:

    order: 7
---

This function recursively removes all derivation attributes from
`x` except for the `name` attribute.

This is to make the generation of `options.xml` much more
efficient: the XML representation of derivations is very large
(on the order of megabytes) and is not actually used by the
manual generator.

This function was made obsolete by renderOptionValue and is kept for
compatibility with out-of-tree code.


# Aliases

- [lib.scruboptionvalue](/nix-doc-comments/reference/lib/lib-scruboptionvalue)


