#pragma once

#include "llvm/IR/Value.h"
#include "llvm/Support/raw_ostream.h"
#include <sstream>
#include <iostream>

namespace Util {
    std::string getName(llvm::Value* value) {
        std::string name = value->getName().str();
        if (name.empty()) {
            // Some names are only for the LL format. In this case,
            // we return the whole code.
            llvm::raw_string_ostream stream(name);
            value->print(stream);
        }
        return name;
    }
}
