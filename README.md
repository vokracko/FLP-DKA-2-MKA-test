# FLP-DKA-2-MKA-test

    make prepare # precompile tests
    make # run tests
  
## Deps
[graphviz](http://www.graphviz.org/)
[openfst](http://openfst.org/)

## Modifying
It should be easy to adjust to test **dka-eq** and **rka-2-dka**

## Scripts
    show.sh ./{original/minimal}/fsm 
show specified *fsm* and its equivalent created by your solution

    fstcompile.sh in out [minimal]
convert *in* to openfst format, compile [, minimize] and save as *out*

    prepare.sh
compile & make minimal fsms for test comparisons

    run.sh [file]
run test for *file*/everything
    

