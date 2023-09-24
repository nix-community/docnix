# Nix doc-comments

This contains a detailed user guide for writing **doc-comments** according to [NixOS/rfc145](https://github.com/NixOS/rfcs/pull/145)

## Abstract

### Why Doc-Comments Matter in Nix Development

Doc-comments in Nix, a purely functional programming language, are like helpful notes added to code.
These notes explain what different parts of the code do.
They're super useful because they make code easier to understand.
When developers work together, these comments help everyone stay on the same page.

**The vision of RFC145 is to enable tools** that can turn these comments into guides or manuals without extra work

In short, doc-comments make Nix coding smoother and teamwork better.

## The Basics

The following section will introduce the outlining rules for using doc comments and introduce the new builtin functionalities.

### For the Content

**Rule 1: Use multiline comments starting with `/**` to start a doc comment**.

**Rule 2: Plain text or Markdown** (see [CommonMark specification](https://spec.commonmark.org/0.30/))

### For the Placement

First we need to understand that there are two different ways of retrieving a doc-comment.

1. `builtins.unsafeGetAttrDoc`
2. `builtins.unsafeGetLambdaDoc`

### Using `unsafeGetAttrDoc` to retrieve an attribute documentation

<details>
<summary>unsafeGetAttrDoc API Documentation</summary>

```haskell
unsafeGetAttrDoc :: String ->  { ... } -> {
    --The content, whitespaces removed, indentation preserved, just like ''string''
    content :: String | null;
    --The primary doc position.
    position :: {
        column :: Int;
        line :: Int;
        file :: String;
      };
  }
```

> Nix looks **DIRECTLY BEFORE** the position, only whitespaces (\s) or `single-line-comments` (`\s# ...\n`) are allowed in between, the position and the doc-comment.
>
> TIP 🔥 Use `nix repl` and play with `unsafeGetAttrDoc` to find out which placements are valid if you are unsure.

</details>

There are certain scenarios, where the attributeDoc can be the same as the lambdaDoc; We'll cover that later in detail.

**Rule:** An AttributeDoc is **ALWAYS** placed directly before the attribute path.

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

```nix
{
  /**
  Argument foo
  */
  foo,

}: {

}
```

#### Then use **builtins.unsafeGetAttrDoc** to get the doc-comment

For more details look at our extensive [attribute doc examples](./examples/attr.nix)

---

### Using `unsafeGetLambdaDoc` to retrieve lambda documentation

<details>
<summary>unsafeGetLambdaDoc API Documentation</summary>

```haskell
unsafeGetLambdaDoc :: Lambda -> {
    --The content, whitespaces removed, indentation preserved, just like ''string''
    content :: String | null;
    --True if the documented value is a primop (only builtins are primops)
    isPrimop :: Boolean;
    --If the documented value is a partially applied lambda
    countApplied :: Int;
    --The primary doc position.
    position :: 
      {
        column :: Int;
        line :: Int;
        file :: String;
      };
  }
```

> Nix looks **DIRECTLY BEFORE** the position, only whitespaces (\s) or `single-line-comments` (`\s# ...\n`) are allowed in between, the position and the doc-comment.
>
> TIP 🔥 Use `nix repl` and play with `unsafeGetLambdaDoc` to find out which placements are valid if you are unsure.

</details>

**Rule:** A LambdaDoc is **ALWAYS** valid if placed directly before the lambda.

> If you find the placement not being suitable for your use-cases, You might want to take advantage of the **Special Case** below.

```nix
{
  foo = /**Some docs*/ x: map x; 
}
```

#### In many scenarios the attributeDoc can be the same as the lambdaDoc

**SPECIAL CASE** If the lambda is **DIRECTLY** assigned to an attribute then you can place the lambda-doc at the same position as the attr-doc.

```nix
{
  /**Lambda doc can be placed here*/
  foo = x: map x;
}
```

#### LambdaDoc is different

LambdaDoc always corresponds with the lambdaValue. It is immutably assigned to the lambda value and also present on aliases that point to the same lambda.

```nix
builtins.unsafeGetLambdaDoc  {
  /**Doc*/
  foo = x: map x;

  alias = foo
}.alias
```

```nix
-> "Doc"
```

```nix
builtins.unsafeGetLambdaDoc  {
  /**Doc*/
  foo = x: map x;

  partial = foo (y: y);
}.partial
```

```nix
-> "Doc"; countApplied=1;
```

#### Use **builtins.unsafeGetLambdaDoc** to get the doc-comment

For more details look at our extensive [lambda doc examples](./examples/lambda.nix)

## FAQ

- Q: Why are the new builtins so complicated
- A: The new functions represent closely, what is possible with the nix language, in our view they offer all possibilities to build documentation directly from nix code, although they might not fit beginners needs, they deliver raw interfaces for framework builders and experts, which can turn them into something more user friendly.

- Q: I have a use-case that isn't supported.
- A: Feel free to file issues OR add your use case to the [examples](./examples/) and we'll figure things out together.

## Technical Details

You might want to stop reading here. This contains nix internal implementation notes.

There are mainly four abstract functions to be added, which are described below

```cpp
unsafeGetAttrDoc(name,set)
// - force name argument to be string 
// - force set argument to be attrSet
// If set has no attribute named ${name}
//    Return <Empty>
// If set.${name} is a PrimOp or PrimOpApp
//    isPrimop = true;
// position = lookupPosition( set.${name} )
// content = lookupDoc(position)
// return { content, positions = [position], isPrimop };
```

```cpp
unsafeGetLambdaDoc(lambda)
// - force lambda argument to be function

// If lambda is in nix defined
//   isPrimop = false;
//   primaryPosition, alternativePosition = lookupLambdaPositions( lambda )
//   content = lookupDoc(primaryPosition)
//   countApplied = getApplyCount(lambda)

//   if no doc comment found:
//     content = lookupDoc(alternativePosition)

// If lambda isPrimop or PrimOpApp
//   isPrimop = true;
//   position = null;
//   content = getBuiltinsDocs(lambda)
//   countApplied = getPrimopApplyCount(lambda)

// return { content, positions = [primaryPosition, alternativePosition], isPrimop, countApplied };
```

```cpp
std::string lookupDoc(position)
// Read file up to position.
// Place regex anchor at the end of the string.
// Search backwards for any multiline comment.
// Ignore ONLY whitespaces and single-line-comments.

// Return stripedComment

```

```cpp
position lookupLambdaPositions(lambda)
// primaryPosition = getSourcePosition(lambda)
// # To find the Parent his issue must be solved first: https://github.com/NixOS/nix/issues/8968
// if lambda -> AST -> parent == NODE_ASSIGN
//    Walk to parent
//    If parent->first_child is NODE_ATTRPATH
//       alternativePosition = NODE_ATTRPATH.start
// Return [primaryPosition, alternativePosition]
```
