cmake_minimum_required(VERSION 3.20)
project(analysis)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

find_package(LLVM REQUIRED CONFIG)
set(LLVM_USE_ZSTD OFF)

set(LLVM_LINK_COMPONENTS 
    Core 
    Support 
    Analysis 
    IRReader
)
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

set(FILES
    graph/GraphManager.cxx
    graph/Node.cxx
    graph/FunctionNode.h
    graph/BasicBlockNode.h
    graph/StackAllocation.h
    graph/LoadNode.h
    graph/ParamNode.h
    graph/LiteralNode.h
    graph/GlobalAllocation.h
    graph/CallNode.h
    graph/NullNode.h
    graph/GraphBuilder.cxx
    BidirectionalCallGraph.cxx
    ConstructionPass.cxx
    GraphBuilderPass.cxx
    APIHelper.h
    main.cxx
)

add_executable(analysis ${FILES})
target_link_libraries(analysis ${LLVM_LIBS} Andersen neo4j-client ssl crypto m)
target_link_directories(analysis PRIVATE ${NEO4J_LIBRARY_DIR})
target_include_directories(analysis PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})