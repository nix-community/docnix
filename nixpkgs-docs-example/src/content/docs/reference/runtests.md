---
title: lib.runTests
editUrl: https://www.github.com/nixos/nixpkgs/blob/master/lib/debug.nix#L289C5
description: runTests
---

Evaluates a set of tests.

A test is an attribute set `{expr, expected}`,
denoting an expression and its expected result.

The result is a `list` of __failed tests__, each represented as
`{name, expected, result}`,

- expected
- What was passed as `expected`
- result
- The actual `result` of the test

Used for regression testing of the functions in lib; see
tests.nix for more examples.

Important: Only attributes that start with `test` are executed.

- If you want to run only a subset of the tests add the attribute `tests = ["testName"];`

# Example

```nix
runTests {
testAndOk = {
expr = lib.and true false;
expected = false;
};
testAndFail = {
expr = lib.and true false;
expected = true;
};
}
->
[
{
name = "testAndFail";
expected = true;
result = false;
}
]
```

# Type

```haskell
runTests :: {
tests = [ String ];
${testName} :: {
expr :: a;
expected :: a;
};
}
->
[
{
name :: String;
expected :: a;
result :: a;
}
]
```
