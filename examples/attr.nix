{getAttrDoc ? builtins.unsafeGetAttrDoc, lib ? (import <nixpkgs> {}).lib }:
{
  # --------------------------------------------------------
  # This section contains example of "OK" scenarios, where there should be some content 
  test_simple_attrs = rec {
    expr = getAttrDoc "foo" {
      /**
      # Home

      This is awesome

      - item 1
      - item 2


      */
      foo = "A very intricate string";
    };
    expected = {
      content = "# Home\n\nThis is awesome\n\n- item 1\n- item 2";
      isPrimop = false;
      position = expr.position;
    };
  };

  test_nested_attrs = rec {
    expr = getAttrDoc "baz" {
      /**
      Baz docs
      */
      foo.bar.baz = "A very intricate string";
    }.foo.bar;
    expected = {
      content = "Baz docs";
      isPrimop = false;
      position = expr.position;
    };
  };

  test_attrs_todo = rec {
    expr = getAttrDoc "foo" {
      /**
      Foo docs
      */
      # TODO: line comments are ignored
      # TODO: line comments are ignored
      foo = "A very intricate string";
    };
    expected = {
      content = "Foo docs";
      isPrimop = false;
      position = expr.position;
    };
  };
  # --------------------------------------------------------
  # This section contains example of "Wrong"-ish scenarios, where the doc-comment is malformed or wrong placed
  # Notice we never throw any errors, in the worst case you'll end up with an empty doc-string.
  test_doc_comment_empty = rec {
    expr = getAttrDoc "foo" {
      /** */
      foo = "A very intricate string";
    };
    expected = {
      content = "";
      isPrimop = false;
      position = expr.position;
    };
  };
  test_non_doc_comment = rec {
    expr = getAttrDoc "foo" {
      /*Non Docs*/
      foo = "A very intricate string";
    };
    expected = {
      content = "";
      isPrimop = false;
      position = expr.position;
    };
  };
  test_doc_comment_hidden_behind_block_comment = rec {
    expr = getAttrDoc "foo" {
      /**
      Foo docs
      */
      /*Comment interruptus*/
      foo = "A very intricate string";
    };
    expected = {
      content = "";
      isPrimop = false;
      position = expr.position;
    };
  };
  test_attribute_paths_are_not_resolved = rec {
    #
    # Correct usage see: "test_nested_attrs"
    #
    expr = getAttrDoc "foo.bar.baz" {
      /**
      Baz docs
      */
      foo.baz.baz = "A very intricate string";
    };
    expected = {
      content = null;
      isPrimop = false;
      position = expr.position;
    };
  };
  test_dynamic_attribute_paths = rec {
    expr = getAttrDoc "foo" {
      /**
      Foo docs
      */
      ${"foo"} = "A very intricate string";
    };
    expected = {
      content = "Foo docs";
      isPrimop = false;
      position = expr.position;
    };
  };
  test_attrname_doesnt_exist = {
    expr = getAttrDoc "no-exist" {
      /** 
      Foo docs
      */
      foo = "A very intricate string";
    };
    expected = {
      content = null;
      isPrimop = false;
      position = null;
    };
  };
  # This is a neat feature
  # it allows to retrieve documentation from function arguments
  test_functionArgs = rec {
    expr = getAttrDoc "arg1" (builtins.functionArgs ({
      /** 
      Argument docs
      */
      arg1,
    }: arg1));
    expected = {
      content = "Argument docs";
      isPrimop = false;
      position = expr.position;
    };
  };
  # List of edge cases, where the attribute path is a dynamic, mapped value
  # I am not sure if we officially want this placements to exist.
  # With the current position tracking of nix they are valid.

  ## This allows to have the same documentation for all generated attribute names
  test_dynamic_set_merged_docs = rec {
    expr = getAttrDoc "a" (lib.mapAttrs' 
      (n: v: 
        {name=n;/**A and B shared docs*/ value=v; }
      )
      {
        a = 1;
        b = 2;
      }
    );
    expected = {
      content = "A and B shared docs";
      isPrimop = false;
      position = expr.position;
    };
  };
  ## This 'weird' placement which is not officially supported, but possible.
  test_dynamic_set_docs = rec {
    expr = getAttrDoc "foo" (builtins.listToAttrs
    [ 
      { name = "foo"; /**Foo Docs*/ value = 123; }
      { name = "bar"; value = 456; }
    ]);
    expected = {
      content = "Foo Docs";
      isPrimop = false;
      position = expr.position;
    };
  };
}
