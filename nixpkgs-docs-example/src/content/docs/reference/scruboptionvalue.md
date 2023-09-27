---
title: lib.scrubOptionValue
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/options.nix#L361C22
description: scrubOptionValue
---

This function recursively removes all derivation attributes from
`x` except for the `name` attribute.

This is to make the generation of `options.xml` much more
efficient: the XML representation of derivations is very large
(on the order of megabytes) and is not actually used by the
manual generator.

This function was made obsolete by renderOptionValue and is kept for
compatibility with out-of-tree code.
