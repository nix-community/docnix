---
title: builtins.throw
editUrl: false
description: builtins.throw
sidebar:

    badge:
        text: Builtin
        variant: note

    order: 0
---

Throw an error message *s*. This usually aborts Nix expression
evaluation, but in `nix-env -qa` and other commands that try to
evaluate a set of derivations to get information about those
derivations, a derivation that throws an error is silently skipped
(which is not the case for `abort`).



