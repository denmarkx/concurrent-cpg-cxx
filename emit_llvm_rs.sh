#!/bin/sh
rustc\
    --emit=llvm-ir\
    -Copt-level=0\
    -Ccodegen-units=1\
    -Coverflow-checks=off\
    -Cdebug-assertions=off\
    -Clto=fat\
    -Cllvm-args="--disable-i2p-p2i-opt --emit-call-site-info"\
    "std_rs.rs"\
    -o "std_rs.ll"

opt-17 \
    -S \
    --passes="called-value-propagation,mem2reg,early-cse,canonicalize-aliases,loop-simplify,lcssa,loop-rotate,loop-instsimplify,indvars,loop-deletion,loop-reduce,correlated-propagation,instcombine,jump-threading,simplifycfg,tailcallelim,reassociate,gvn,sccp,instcombine,function-attrs,instcombine,adce,dce,globalopt,globaldce,constmerge,strip-dead-prototypes,strip-dead-debug-info,partially-inline-libcalls" \
    "std_rs.ll" \
    -o "std_rs.ll"