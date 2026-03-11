rustc\
    --emit=llvm-ir\
    -Copt-level=0\
    -Ccodegen-units=1\
    -Coverflow-checks=off\
    -Cdebug-assertions=off\
    -Clto=fat\
    -Cllvm-args="--disable-i2p-p2i-opt --emit-call-site-info"\
    -Cpasses="internalize\
    canonicalize-aliases \
    strip-dead-prototypes \
    strip-dead-debug-info \
    constmerge \
    globaldce \
    globalopt \
    adce \
    simplifycfg \
    instsimplify \
    instnamer \
    called-value-propagation \
    function-attrs \
    dce"\
    "std_rs.rs"\
    -o "std_rs.ll"