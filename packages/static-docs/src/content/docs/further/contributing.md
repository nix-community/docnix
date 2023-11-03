---
title: Contributing
editUrl: false
pagefind: false
prev: false
next: false
---

## How to write reference documentation

Good documentation is not natural. There are opposing goals that make writing good documentation difficult. It requires expertise in the subject but also writing from a novice perspective. Documentation therefore often glazes over implementation details or leaves readers with unanswered questions.

Here we provide you with an opinionated guide to essentially cover all important documentation questions.

### Describe everything

Give a clear description of the purpose of the function and its possible applications. Break down complex explanations into simple and understandable sentences and bullet points. Also, take into account that not all users are native English speakers.

### Provide Examples

Provide examples of different scenarios when this function might be useful.

Examples are among the most important types of documentation because they illustrate specific use cases and provide valuable help in understanding a concept. To indicate that the following content is valid Nix code, use triple backticks (` ```nix`) for fenced code blocks in Markdown.

> Examples can be placed anywhere in your doc-comment since they are just normal markdown code blocks.
> Some users prefer to group their examples under `# Examples` heading. We leave that open to you.

### Provide Type signature

Provide a single type signature.

Type signatures serve as the most concise form of API documentation by encapsulating both the allowed input values and the expected return values through abstract bounds.

**Convention:**

We usually use the markdown heading `# Type` to start the specific section. In certain use cases ` ````type` may appear without a former `# Type` heading but should only occur once per doc-comment.

use ` ```type` (markdowns fenced code blocks) to indicate that the following is valid type annotation.

> The type language for documentation is not yet specified, try to follow the established conventions from our ecosystem.

#### Function argument description

If your function takes arguments `a:` or lambda formals `{ a, b, c, ...}:`

it is important to provide comprehensive documentation for each argument. This documentation should include details about the intended purpose, valid data types, expected values, and any other pertinent information

**We encourage you to adopt the following style for documenting the function signature**

````nix
/**
  ...

  # Type

  ```type
  { a :: Number; b :: Number } -> Number
  ```

  - [a] The first number
  - [b] The second number. Zero if not provided.    

  - [returns] The sum of both numbers.

  ...
*/
{a,b ? 0}: a + b
````

#### Function return description

If your function produces a return value, it is important that you describe exactly what the function returns. If the function can return different results under certain conditions, you should also explain these conditional results in more detail.

## Edge Cases and Considerations

It is important to consider any potential special cases or other factors that should be considered.

## Notes

What else should the user know about the function?

If necessary, provide additional information that users should know about this function. This may include notes, references to related functions, or other relevant details.

## Some Examples

````nix


````

````nix
  /**
    Evaluates a set of tests.
    A test is an attribute set `{expr, expected}`,
    denoting an expression and its expected result.
    The result is a `list` of **failed tests**, each represented as

    `{name, expected, result}`,
    - expected
    - What was passed as `expected`
    - result
    - The actual `result` of the test
    Used for regression testing of the functions in lib; 
    
    see `tests.nix` for more examples.

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

    ```
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
  */
  runTests = ...
````
