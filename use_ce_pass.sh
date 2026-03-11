opt-17 -load-pass-plugin build/libCEPass.so std_rs.ll -passes="code-elim" -o std_rs.bc
llvm-dis-17 std_rs.bc -o std_rs_2.ll
