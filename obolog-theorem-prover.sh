#!/bin/sh
sbcl --core $HOME/src/snark/snark-sbcl.core --load obolog-theorem-prover.lisp --eval "(in-package :snark-user)" --eval "(obolog-prove '$1)"
