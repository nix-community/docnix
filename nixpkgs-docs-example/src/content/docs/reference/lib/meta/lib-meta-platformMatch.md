---
title: lib.meta.platformMatch
editUrl: https://www.github.com/hsjobeki/nixpkgs/blob/migrated/lib/meta.nix#L107C19
description: lib.meta.platformMatch
sidebar:

    order: 7
---

Check to see if a platform is matched by the given `meta.platforms`
element.

A `meta.platform` pattern is either

1. (legacy) a system string.

2. (modern) a pattern for the entire platform structure (see `lib.systems.inspect.platformPatterns`).

3. (modern) a pattern for the platform `parsed` field (see `lib.systems.inspect.patterns`).

We can inject these into a pattern for the whole of a structured platform,
and then match that.



