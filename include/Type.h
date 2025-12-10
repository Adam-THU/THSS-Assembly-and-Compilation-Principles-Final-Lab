#pragma once

#include <string>
#include <vector>
#include <memory>

// 类型基类
class Type {
public:
    virtual ~Type() = default;
    virtual std::string toString() const = 0;
    virtual bool isArray() const { return false; }
    virtual bool isPointer() const { return false; }
};

// 整数类型
class IntegerType : public Type {
public:
    int width;  // 位宽：1 (i1), 32 (i32)
    
    IntegerType(int w) : width(w) {}
    
    std::string toString() const override {
        return "i" + std::to_string(width);
    }
};

// 数组类型
class ArrayType : public Type {
public:
    std::shared_ptr<Type> elementType;
    std::vector<int> dimensions;
    
    ArrayType(std::shared_ptr<Type> elemType, const std::vector<int>& dims)
        : elementType(elemType), dimensions(dims) {}
    
    bool isArray() const override { return true; }
    
    std::string toString() const override {
        std::string result = elementType->toString();
        // 从最后一个维度到第一个维度，反向构建
        for (int i = (int)dimensions.size() - 1; i >= 0; --i) {
            result = "[" + std::to_string(dimensions[i]) + " x " + result + "]";
        }
        return result;
    }
};

// 指针类型
class PointerType : public Type {
public:
    std::shared_ptr<Type> pointee;
    
    PointerType(std::shared_ptr<Type> pType) : pointee(pType) {}
    
    bool isPointer() const override { return true; }
    
    std::string toString() const override {
        return pointee->toString() + "*";
    }
};

// 便捷函数：创建常用类型
inline std::shared_ptr<Type> i1Type() {
    return std::make_shared<IntegerType>(1);
}

inline std::shared_ptr<Type> i32Type() {
    return std::make_shared<IntegerType>(32);
}

inline std::shared_ptr<Type> pointerType(std::shared_ptr<Type> baseType) {
    return std::make_shared<PointerType>(baseType);
}