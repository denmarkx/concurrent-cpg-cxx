### Field Sensitivity
Modified to use an index-based field sensitivity implementation. Upon doing any mutable container-like operations, `NodeMap.h` will attempt to resolve the field path and perform the `DenseMap` lookup using that resolved path. This handles cases such as GEPs being directly inlined within instructions and not being its own SSA value.

**Field 0**:
Assume that the item `x` corresponds to an aggregate type. `x` will resolve to `x[field=0]` (because &x = &x[0]). Currently, an item strictly representing `x` remains unused.

**GEP Initial Offset**:
A GEP instruction where the first index is not 0 remains unhandled.

**Parameters**:
A parameter that comes directly from a GEP instruction is an opaque pointer that provides no field information. The fields are attempted to be resolved by viewing its DEF-USE map to identify other GEP instructions. However, this is unsound because DEF-USE is unordered and type-casting is unaccounted for.

An alternative solution would be to identify if the DWARF metadata provides any useful information.
