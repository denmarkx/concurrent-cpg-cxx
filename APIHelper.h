#pragma once

#include "llvm/IR/Value.h"
#include "llvm/Support/raw_ostream.h"
#include <sstream>
#include <iostream>
#include <array>

namespace Util {
    inline std::string escapeCypherString(const std::string& s) {
        std::string out;
        out.reserve(s.size());

        for (char c : s) {
            if (c == '\'')
                out += "\\'";
            else if (c == '\\')
                out += "\\\\";
            else
                out += c;
        }

        return out;
    }

    inline std::string getName(const llvm::Value* value) {
        if (value == nullptr) return "";

        std::string name = value->getName().str();
        if (name.empty()) {
            // Some names are only for the LL format. In this case,
            // we return the whole code.
            llvm::raw_string_ostream stream(name);
            // value->print(stream);
        }
        return name;
    }

    inline std::string parseNeo4jKey(std::string key) {
        std::string parsedKey = "";
        std::copy_if(key.begin(), key.end(),
            std::back_inserter(parsedKey),
            [](unsigned char c){ return std::isalnum(c); });
        return parsedKey;
    }
}
