cmake_minimum_required(VERSION 3.20)
project(analysis)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_COMPILER "clang++-17")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3")

if (WANT_VALGRIND)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -gdwarf-4 -fno-omit-frame-pointer")
message("Building with -g -gdwarf-4 -fno-omit-frame-ponter")
endif()

find_package(LLVM 17 REQUIRED CONFIG)
set(LLVM_USE_ZSTD OFF)

set(LLVM_LINK_COMPONENTS 
    Core 
    Support 
    Analysis 
    IRReader
)
message(STATUS "Current build type is: ${CMAKE_BUILD_TYPE}")

include_directories(${LLVM_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})
llvm_map_components_to_libnames(LLVM_LIBS ${LLVM_LINK_COMPONENTS})

set(NEO4J_INCLUDE_DIR "/usr/local/include")
set(NEO4J_LIBRARY_DIR "/usr/local/lib")

set (ANDERSEN_FILES
    andersen/Andersen.cpp
    andersen/AndersenAA.cpp
    andersen/ConstraintCollect.cpp
    andersen/ConstraintOptimize.cpp
    andersen/ConstraintSolving.cpp
    andersen/ExternalLibrary.cpp
    andersen/NodeFactory.cpp
)

add_library(Andersen SHARED ${ANDERSEN_FILES})
target_include_directories(Andersen PUBLIC andersen)
target_link_libraries(Andersen PUBLIC ${LLVM_LIBS})

set(FILES
    graph/GraphManager.cxx
    graph/Node.cxx
    graph/FunctionNode.h
    graph/BasicBlockNode.h
    graph/StackAllocation.h
    graph/GroupNode.h
    graph/LoadNode.h
    graph/ParamNode.h
    graph/LiteralNode.h
    graph/GetElementPtrNode.h
    graph/GlobalAllocation.h
    graph/GlobalConstant.h
    graph/BinaryOperatorNode.h
    graph/CallNode.h
    graph/NullNode.h
    graph/ICompareNode.h
    graph/BranchNode.h
    graph/SwitchNode.h
    graph/GraphBuilder.cxx
    graph/InstructionOrdering.h
    graph/BlockComplexity.h
    concurrency/ConcurrencyManager.h
    concurrency/ConcurrencyPass.h
    concurrency/ThreadNode.h
    concurrency/JoinNode.h
    BidirectionalCallGraph.cxx
    ConstructionPass.cxx
    GraphBuilderPass.cxx
    GraphBuilderFuncPass.cxx
    GraphBuilderProcessPass.cxx
    LTOLibCManager.cxx
    APIHelper.h
    Debug.h
    main.cxx
)

add_executable(analysis ${FILES})
target_link_libraries(analysis Andersen neo4j-client m)
target_link_directories(analysis PRIVATE ${NEO4J_LIBRARY_DIR})
target_include_directories(analysis PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_include_directories(analysis PRIVATE ${NEO4J_INCLUDE_DIR})
target_compile_definitions(analysis PUBLIC DEBUG=$<CONFIG:Debug>)

include(CTest)
include("_cmake/doctest.cmake")

set(TEST_FILES
    tests/test_andersen.cxx
)

add_executable(unit_test ${TEST_FILES})
target_include_directories(unit_test PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(unit_test Andersen)
doctest_discover_tests(unit_test)
