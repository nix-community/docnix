{
  getAttrDoc ? builtins.unsafeGetAttrDoc,
  getLambdaDoc ? builtins.unsafeGetLambdaDoc,

}:
{
  # --------------------------------------------------------
  # This section contains example of "OK" scenarios, where there should be some content 
  test_simple_lambda = rec {
    expr = getLambdaDoc {
      /**
      Foo docs
      */
      foo = x: x;
    }.foo;
    expected = {
      content = "Foo docs";
      isPrimop = false;
      # We dont check the posiion in this example it is likely to change when reformatting this file
      position = expr.position;
    };
  };

  test_placement_at_lambda = rec {
    expr = getLambdaDoc {
      foo = 
      /**
      Foo docs
      */
      x: x;
    }.foo;
    expected = {
      content = "Foo docs";
      isPrimop = false;
      position = expr.position;
    };
  };
  test_simple_lambda_parenthesis = rec {
    expr = getLambdaDoc {
      /**
      Foo docs
      */
      foo = ((x: (x)));
    }.foo;
    expected = {
      content = "Foo docs";
      isPrimop = false;
      position = expr.position;
    };
  };

  test_duplicate_placement = rec {
    expr = getLambdaDoc {
      /**
      Secondary doc comment
      */
      foo = 
      /**
      Primary doc comment
      */
      x: x;
    }.foo;
    expected = {
      content = "Primary doc comment";
      isPrimop = false;
      position = expr.position;
    };
  };

  test_curried_lambda = rec {
    expr = getLambdaDoc {
      /**
      Foo docs
      */
      foo = 
      a: 
      b: 
      c: 
        a;
    }.foo;
    expected = {
      content = "Foo docs";
      isPrimop = false;
      position = expr.position;
    };
  };

  test_lambda_partially_applied_1 = rec {
    expr = getLambdaDoc ({
      /**
      Foo docs
      */
      foo = 
      a: 
      /**
      This is weird. You should not document like that.
      */
      b: 
      c: 
        a;
    }.foo "1");
    expected = {
      content = "This is weird. You should not document like that.";
      isPrimop = false;
      position = expr.position;
    };
  };

  test_lambda_partially_applied_2 = rec {
    expr = getLambdaDoc ({
      /**
      Foo docs
      */
      foo = 
      a: 
      b:
      /**
      This is weird. You should not document like that.
      */
      c: 
        a;
    }.foo "1" "2");
    expected = {
      content = "This is weird. You should not document like that.";
      isPrimop = false;
      position = expr.position;
    };
  };

  # # As shown below, a lambda can have only one documentation.
  # # To override the documentation you can use `builtins.unsafeGetAttrDoc`
  test_lambda_alias_1 = rec {
    expr = getLambdaDoc (rec {
      /**
      The id function
      */
      lib.id = x: x; 
      /**
      Not shown
      */
      alias = lib.id;
    }.alias);
    expected = {
      content = "The id function";
      isPrimop = false;
      position = expr.position;
    };
  };
  test_lambda_alias_2 = rec {
    expr = getLambdaDoc (rec {
      /**
      The id function
      */
      lib.id = x: x; 

      /**
      Not shown
      */
      alias = lib.id;

      /**
      Not shown
      */
      alias_alias = alias;
    }.alias_alias);
    expected = {
      content = "The id function";
      isPrimop = false;
      position = expr.position;
    };
  };

  test_passthrough_lambdas = rec {
    expr = getLambdaDoc (rec {
      /**
      A fixpoint function
      */
      fix = f: let x = f x; in x;

      /**
      Docs
      */
      id = fix (_: /**The id function*/x: x);

    }.id);
    expected = {
      content = "The id function";
      isPrimop = false;
      position = expr.position;
    };
  };

  test_pattern_lambda = rec {
    expr = getLambdaDoc ({
      /**
      A function
      */
      function = { arg, ...}@args: arg // args;

    }.function);
    expected = {
      content = "A function";
      isPrimop = false;
      position = expr.position;
    };
  };

  # # ------------------------------------------
  # # From a nix-language perspecive primOps are functions too.
  test_primop = rec {
    expr = getLambdaDoc ({
      /**
      Not shown if builtins.add is the value of this expression.
      Lambda documentation is inherited as described in the tests above.
      Strictly speaking this documentation should be behind the 'or' keyword below, to work as expected
      */
      add = builtins.add or (x: y: x + y);
    
    }.add);
    expected = {
      # TODO: print documentation of primops here
      content = "\n      Return the sum of the numbers *e1* and *e2*.\n    ";
      isPrimop = true;
      position = expr.position;
    };
  }; 

  # TODO: this is segfault
  # test_primopApp = rec {
  #   expr = getLambdaDoc ({
  #     /**
  #     This is not shown for partially applied primOps
  #     It shows the builtins.docs instead
  #     */
  #     add = builtins.add 1;
    
  #   }.add);
  #   expected = {
  #     # TODO: print documentation of primops here
  #     content = "\n      Return the sum of the numbers *e1* and *e2*.\n    ";
  #     isPrimop = true;
  #     position = expr.position;
  #   };
  # };

  test_lib_or_primop_old = rec {
    expr = getLambdaDoc ({
      /**
      This is a common place in nixpkgs.lib
      But it doesn't work with the new standard
      */
      id = builtins.id or (x: x);
    
    }.id);
    expected = {
      # TODO: print documentation of primops here
      content = null;
      isPrimop = false;
      position = expr.position;
    };
  };

  test_lib_or_primop_new = rec {
    expr = getLambdaDoc ({
      /**
      This is a common place in nixpkgs.lib
      But it doesn't work with the new standard
      */
      id = builtins.id or /**The lib function id*/ (x: x);
    
    }.id);
    expected = {
      # TODO: print documentation of primops here
      content = "The lib function id";
      isPrimop = false;
      position = expr.position;
    };
  };


  # Tests where we need https://github.com/NixOS/nix/issues/8968 to be solved.

  # test_pattern_lambda_partially_applied = rec {
  #   expr = getLambdaDoc ({
  #     /**
  #     A function
  #     */
  #     function = arg1: { arg2, ...}@args: arg1 // args // arg2;

  #   }.function {});
  #   expected = {
  #     content = "A function";
  #     isPrimop = false;
  #     position = expr.position;
  #   };
  # };

  test_lambda_partially_applied_3 = rec {
    expr = getLambdaDoc ({
      /**
      Foo docs
      */
      foo = a: b:  c: a;
    }.foo "1");
    expected = {
      content = "Foo docs";
      isPrimop = false;
      # We dont check the posiion in this example it is likely to change when reformatting this file
      position = expr.position;
    };
  };
}
