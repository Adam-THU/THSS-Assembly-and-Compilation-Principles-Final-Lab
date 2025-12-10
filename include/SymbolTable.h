#pragma once

#include <string>
#include <map>
#include <vector>
#include <memory>
#include "Type.h"

// 符号表条目，记录变量/函数的类型和值
struct Symbol {
    std::string name;
    std::shared_ptr<Type> type;
    std::string llvmName;  // LLVM 中的名称（可能带 @/% 前缀）
    bool isConst = false;
    int constValue = 0;
    bool isParam = false;  // 是否是函数参数
    
    Symbol() = default;
    Symbol(const std::string& n, std::shared_ptr<Type> t, const std::string& ln, bool isP = false)
        : name(n), type(t), llvmName(ln), isParam(isP) {}
};

// 作用域管理
class SymbolTable {
private:
    std::vector<std::map<std::string, Symbol>> scopes;  // 符号表栈
    
public:
    SymbolTable() {
        scopes.emplace_back();  // 全局作用域
    }
    
    // 进入新的作用域
    void enterScope() {
        scopes.emplace_back();
    }
    
    // 退出当前作用域
    void exitScope() {
        if (scopes.size() > 1) {
            scopes.pop_back();
        }
    }
    
    // 在当前作用域添加符号
    void addSymbol(const std::string& name, std::shared_ptr<Type> type, 
                   const std::string& llvmName, bool isConst = false, int constVal = 0) {
        Symbol sym(name, type, llvmName);
        sym.isConst = isConst;
        sym.constValue = constVal;
        scopes.back()[name] = sym;
    }
    
    // 查找符号（从内向外查找）
    Symbol* lookup(const std::string& name) {
        for (int i = scopes.size() - 1; i >= 0; --i) {
            auto it = scopes[i].find(name);
            if (it != scopes[i].end()) {
                return &it->second;
            }
        }
        return nullptr;
    }
    
    // 仅在当前作用域查找
    Symbol* lookupLocal(const std::string& name) {
        auto it = scopes.back().find(name);
        return (it != scopes.back().end()) ? &it->second : nullptr;
    }
};
