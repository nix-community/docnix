---
title: lib.lists.groupBy' (Prime)
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/lists.nix#L583C14
description: lib.lists.groupBy'
sidebar:

    order: 7
---

Splits the elements of a list into many lists, using the return value of a predicate.
Predicate should return a string which becomes keys of attrset `groupBy` returns.

`groupBy'` allows to customise the combining function and initial value

# Example

```nix
groupBy (x: boolToString (x > 2)) [ 5 1 2 3 4 ]
=> { true = [ 5 3 4 ]; false = [ 1 2 ]; }
groupBy (x: x.name) [ {name = "icewm"; script = "icewm &";}
{name = "xfce";  script = "xfce4-session &";}
{name = "icewm"; script = "icewmbg &";}
{name = "mate";  script = "gnome-session &";}
]
=> { icewm = [ { name = "icewm"; script = "icewm &"; }
{ name = "icewm"; script = "icewmbg &"; } ];
mate  = [ { name = "mate";  script = "gnome-session &"; } ];
xfce  = [ { name = "xfce";  script = "xfce4-session &"; } ];
}

groupBy' builtins.add 0 (x: boolToString (x > 2)) [ 5 1 2 3 4 ]
=> { true = 12; false = 3; }
```


# Aliases

- [lib.groupBy'](/reference/libgroupBy')


