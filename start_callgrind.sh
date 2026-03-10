valgrind --tool=callgrind ./build/analysis
callgrind_annotate --include=graph callgrind.out.*
kcachegrind callgrind.out.*
