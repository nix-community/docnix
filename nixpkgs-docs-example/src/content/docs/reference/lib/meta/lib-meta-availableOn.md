---
title: lib.meta.availableOn
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/undefined#L126C17
description: lib.meta.availableOn
sidebar:

    order: 7
---

Check if a package is available on a given platform.

A package is available on a platform if both

1. One of `meta.platforms` pattern matches the given
platform, or `meta.platforms` is not present.

2. None of `meta.badPlatforms` pattern matches the given platform.



