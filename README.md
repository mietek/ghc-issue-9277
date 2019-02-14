-------------------------------------------------------------------------------

This project is no longer maintained.

-------------------------------------------------------------------------------


GHCi Fail One
=============

A reproduction of one GHCi failure.

    $ make
    cabal configure
    Resolving dependencies...
    Configuring ghci-fail-one-0.0.1...
    cabal run
    Preprocessing executable 'ghci-fail-one' for ghci-fail-one-0.0.1...
    [1 of 1] Compiling Main             ( src/ghci-fail-one.hs, dist/build/ghci-fail-one/ghci-fail-one-tmp/Main.o )
    Linking dist/build/ghci-fail-one/ghci-fail-one ...
    True
    cabal repl -- -v
    creating dist/build
    creating dist/build/autogen
    Preprocessing executable 'ghci-fail-one' for ghci-fail-one-0.0.1...
    creating dist/build/ghci-fail-one
    creating dist/build/ghci-fail-one/ghci-fail-one-tmp
    Building C Sources...
    creating dist/build/ghci-fail-one/ghci-fail-one-tmp
    /opt/bin/ghc -c -static -odir dist/build/ghci-fail-one/ghci-fail-one-tmp -Idist/build/autogen -Idist/build/ghci-fail-one/ghci-fail-one-tmp -optc-O2 -package-db dist/package.conf.inplace -package-id base-4.7.0.0-a333addb6892f3cc2e6baa5ec782bd04 cbits/glue.m
    /opt/bin/ghc --interactive -fbuilding-cabal-package -O0 -outputdir dist/build/ghci-fail-one/ghci-fail-one-tmp -odir dist/build/ghci-fail-one/ghci-fail-one-tmp -hidir dist/build/ghci-fail-one/ghci-fail-one-tmp -stubdir dist/build/ghci-fail-one/ghci-fail-one-tmp -i -idist/build/ghci-fail-one/ghci-fail-one-tmp -isrc -idist/build/autogen -Idist/build/autogen -Idist/build/ghci-fail-one/ghci-fail-one-tmp -optP-include -optPdist/build/autogen/cabal_macros.h -framework Foundation -hide-all-packages -package-db dist/package.conf.inplace -package-id base-4.7.0.0-a333addb6892f3cc2e6baa5ec782bd04 -XHaskell2010 src/ghci-fail-one.hs dist/build/ghci-fail-one/ghci-fail-one-tmp/cbits/glue.o -Wall -Werror
    GHCi, version 7.8.2: http://www.haskell.org/ghc/  :? for help
    Loading package ghc-prim ... linking ... done.
    Loading package integer-gmp ... linking ... done.
    Loading package base ... linking ... done.
    Loading object (static) dist/build/ghci-fail-one/ghci-fail-one-tmp/cbits/glue.o ... ghc: panic! (the 'impossible' happened)
      (GHC version 7.8.2 for x86_64-apple-darwin):
    	Loading temp shared object failed: dlopen(/var/folders/26/0tzj1txn0vb_0061l4z4rsmr0000gn/T/ghc35512_0/ghc35512_1.dylib, 9): Symbol not found: _OBJC_CLASS_$_NSThread
      Referenced from: /var/folders/26/0tzj1txn0vb_0061l4z4rsmr0000gn/T/ghc35512_0/ghc35512_1.dylib
      Expected in: flat namespace
     in /var/folders/26/0tzj1txn0vb_0061l4z4rsmr0000gn/T/ghc35512_0/ghc35512_1.dylib

    Please report this as a GHC bug:  http://www.haskell.org/ghc/reportabug

    make: *** [repl] Error 1


Meta
----

Written by [Miëtek Bak][].  Say hello@mietek.io

Available under the BSD license.


----

[Miëtek Bak]: http://mietek.io
