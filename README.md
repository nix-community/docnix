# Nix doc-comments

This contains a detailed user guide for writing **doc-comments** according to [NixOS/rfc145](https://github.com/NixOS/rfcs/pull/145)

## Abstract

**Why Doc-Comments Matter in Nix Development**

Doc-comments in Nix, a purely functional programming language, are like helpful notes added to code. 
These notes explain what different parts of the code do. 
They're super useful because they make code easier to understand. 
When developers work together, these comments help everyone stay on the same page. 

**The vision of RFC145 is to enable tools that can turn these comments into guides or manuals without extra work**

In short, doc-comments make Nix coding smoother and teamwork better.

## The Basics

### For the Content

Rule 1: Use multiline comments starting with `/**` to start a doc comment.
Rule 2: Plain text or Markdown (see [CommonMark specification](https://spec.commonmark.org/0.30/))

### For the Placement

There are multiple possible placements in the nix language. The most common ones beeing: 

1. Before an `attrPath`

```nix
{
  /**
  Some docs
  */
  foo = builtins.derivation {
    # ...
  };
}
```

Use **builtins.unsafeGetAttrDoc** to get the doc-comment.

2. Before a `lambda`

```nix
/**
Some docs
*/
{config, ...}: {
  config.feature.enable = true;
}
```
Use **builtins.unsafeGetLambdaDoc** to get the doc-comment.

## [More Examples](./examples)

## FAQ

- TBD.
