{
  getAttrDoc ? builtins.unsafeGetAttrDoc,
  getLambdaDoc ? builtins.unsafeGetLambdaDoc,
}: {
  # --------------------------------------------------------
  # This section contains example of "OK" scenarios, where there should be some content
  test_simple_lambda = rec {
    expr =
      getLambdaDoc
      {
        /**
        Foo docs
        */
        foo = x: x;
      }
      .foo;
    expected = {
      content = "Foo docs";
      isPrimop = false;
      # We dont check the posiion in this example it is likely to change when reformatting this file
      position = expr.position;
    };
  };

  test_placement_at_lambda = rec {
    expr =
      getLambdaDoc
      {
        foo =
          /**
          Foo docs
          */
          x: x;
      }
      .foo;
    expected = {
      content = "Foo docs";
      isPrimop = false;
      position = expr.position;
    };
  };
  test_simple_lambda_parenthesis = rec {
    expr =
      getLambdaDoc
      {
        /**
        Foo docs
        */
        foo = x: x;
      }
      .foo;
    expected = {
      content = "Foo docs";
      isPrimop = false;
      position = expr.position;
    };
  };

  test_duplicate_placement = rec {
    expr =
      getLambdaDoc
      {
        /**
        AttrDoc comment
        Fallback LambdaDoc comment
        */
        foo =
        /**
        Primary LambdaDoc 
        */
        x: x;
      }
      .foo;
    expected = {
      content = "Primary LambdaDoc";
      isPrimop = false;
      position = expr.position;
    };
  };

  test_curried_lambda = rec {
    expr =
      getLambdaDoc
      {
        /**
        Foo docs
        */
        foo = a: b: c:
          a;
      }
      .foo;
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
        foo = a:
        /**
        This is weird. You should not document like that.
        */
        b: c:
          a;
      }
      .foo "1");
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
        foo = a: 
        b:
        /**
        This is weird. You should not document like that.
        */
        c:
          a;
      }
      .foo "1" "2");
    expected = {
      content = "This is weird. You should not document like that.";
      isPrimop = false;
      position = expr.position;
    };
  };

  # As shown below, a lambda can have only one documentation.
  # To override the documentation you can use `builtins.unsafeGetAttrDoc`
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
      }
      .alias);
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
      }
      .alias_alias);
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
        id = fix (_:
          /**
          The id function
          */
          x: x);
      }
      .id);
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
        function = {arg, ...} @ args: arg // args;
      }
      .function);
    expected = {
      content = "A function";
      isPrimop = false;
      position = expr.position;
    };
  };

  # ------------------------------------------
  # From a nix-language perspecive primOps are functions too.
  test_primop = rec {
    expr = getLambdaDoc ({
        /**
        Never shown
        use getAttrDoc to show it.
        */
        add = builtins.add 
        or
        /** 
        This will be shown if builtins.add is not available
        */
        (x: y: x + y);
      }
      .add);
    expected = {
      # TODO: print documentation of primops here
      content = "Return the sum of the numbers *e1* and *e2*.";
      isPrimop = true;
      position = expr.position;
    };
  };

  test_primopApp = rec {
    expr = getLambdaDoc ({
      /**
      This is not shown for partially applied primOps
      It shows the builtins.docs instead
      */
      add = builtins.add 1;

    }.add);
    expected = {
      # TODO: print documentation of primops here
      content = "Return the sum of the numbers *e1* and *e2*.";
      isPrimop = true;
      countApplied = 1;
      position = expr.position;
    };
  };
  test_primopApp_complex = rec {
    expr = getLambdaDoc ({
      /**
      This is not shown for partially applied primOps
      It shows the builtins.docs instead
      */
      add = builtins.substring 3 0;

    }.add);
    expected = {
      # TODO: print documentation of primops here
      content = "Return the substring of *s* from character position *start*\n(zero-based) up to but not including *start + len*. If *start* is\ngreater than the length of the string, an empty string is returned,\nand if *start + len* lies beyond the end of the string, only the\nsubstring up to the end of the string is returned. *start* must be\nnon-negative. For example,\n\n```nix\nbuiltins.substring 0 3 \"nixos\"\n```\n\nevaluates to `\"nix\"`.";
      isPrimop = true;
      countApplied = 2; 
      position = expr.position;
    };
  };

  test_lib_or_primop_old = rec {
    expr = getLambdaDoc ({
        /**
        This is a common place in nixpkgs.lib
        But it doesn't work with the new standard
        */
        id = builtins.id or (x: x);
      }
      .id);
    expected = {
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
        id =
          builtins.id
          or
          /**
          The lib function id
          */
          (x: x);
      }
      .id);
    expected = {
      # TODO: print documentation of primops here
      content = "The lib function id";
      isPrimop = false;
      position = expr.position;
    };
  };

  # Tests where we need https://github.com/NixOS/nix/issues/8968 to be solved.

  # TODO: This doesnt work yet
  # test_dynamic_path_simple = rec {
  #   expr = getLambdaDoc ({
  #       /**
  #       A function assigned to a dynamic name.
  #       */
  #       ${"foo"} = x: x;
  #     }
  #     .foo);
  #   expected = {
  #     content = "A function assigned to a dynamic name.";
  #     isPrimop = false;
  #     position = expr.position;
  #   };
  # };
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

  # THIS WILL NEVER WORK 
  # TODO: this test traps the REGEX in infinite recursion. Will be solved by https://github.com/NixOS/nix/issues/8968 too.
  # test_dynamic_path_complex = rec {
  #   expr = getLambdaDoc ({
  #       /**
  #       Ignored comment
  #       */
  #       ${let s = "foo"; in s} = x: x;
  #     }
  #     .foo);
  #   expected = {
  #     content = null;
  #     isPrimop = false;
  #     position = expr.position;
  #   };
  # };

  # TODO: somehow this doesnt work 
  # test_dynamic_path_correct = rec {
  #   expr = getLambdaDoc ({
  #       /**
  #       Ignored comment
  #       */
  #       ${let s = "foo"; in s} =
  #         /**
  #         Correct Docs
  #         */
  #         x: x;
  #     }.foo);
  #   expected = {
  #     content = "Correct Docs";
  #     isPrimop = false;
  #     position = expr.position;
  #   };
  # };


  # test_lambda_partially_applied_3 = rec {
  #   expr = getLambdaDoc ({
  #       /**
  #       Foo docs
  #       */
  #       foo = a: b: c: a;
  #     }
  #     .foo "1");
  #   expected = {
  #     content = "Foo docs";
  #     isPrimop = false;
  #     position = expr.position;
  #   };
  # };
}
