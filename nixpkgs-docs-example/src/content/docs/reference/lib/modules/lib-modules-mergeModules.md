---
title: lib.modules.mergeModules
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/modules.nix#L543C18
description: lib.modules.mergeModules
sidebar:

    order: 7
---

Merge a list of modules.  This will recurse over the option
declarations in all modules, combining them into a single set.
At the same time, for each option declaration, it will merge the
corresponding option definitions in all machines, returning them
in the ‘value’ attribute of each option.

This returns a set like
{
# A recursive set of options along with their final values
matchedOptions = {
foo = { _type = "option"; value = "option value of foo"; ... };
bar.baz = { _type = "option"; value = "option value of bar.baz"; ... };
...
};
# A list of definitions that weren't matched by any option
unmatchedDefns = [
{ file = "file.nix"; prefix = [ "qux" ]; value = "qux"; }
...
];
}


# Aliases

- [lib.mergeModules](./reference/lib/lib-mergeModules)


