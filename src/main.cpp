#include <iostream>
#include <fstream>
#include <chrono>
#include "antlr4-runtime.h"
#include "SysYLexer.h"
#include "SysYParser.h"
#include "CodeGenVisitor.h"

int main(int argc, const char *argv[]) {
    if (argc < 3) {
        std::cerr << "Usage: ./compiler <input-file> <output-file>" << std::endl;
        return 1;
    }
    
    // 读取输入文件
    std::ifstream inputFile(argv[1]);
    if (!inputFile.is_open()) {
        std::cerr << "Error: Cannot open input file: " << argv[1] << std::endl;
        return 1;
    }
    
    auto start = std::chrono::high_resolution_clock::now();
    
    // ANTLR4 词法分析
    antlr4::ANTLRInputStream input(inputFile);
    SysYLexer lexer(&input);
    antlr4::CommonTokenStream tokens(&lexer);
    
    // ANTLR4 语法分析
    SysYParser parser(&tokens);
    auto tree = parser.compUnit();
    
    // IR 生成
    CodeGenVisitor visitor;
    visitor.visit(tree);
    std::string irCode = visitor.getIR();
    
    auto end = std::chrono::high_resolution_clock::now();
    auto duration = std::chrono::duration_cast<std::chrono::microseconds>(end - start);
    
    // 写入输出文件
    std::ofstream outputFile(argv[2]);
    if (!outputFile.is_open()) {
        std::cerr << "Error: Cannot open output file: " << argv[2] << std::endl;
        return 1;
    }
    
    outputFile << irCode;
    
    std::cerr << "Compilation successful!" << std::endl;
    std::cerr << "TOTAL: " << duration.count() / 3600000000 << "H-"
              << (duration.count() / 60000000) % 60 << "M-"
              << (duration.count() / 1000000) % 60 << "S-"
              << duration.count() % 1000000 << "us" << std::endl;
    
    return 0;
}