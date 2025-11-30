  #include <iostream>
  #include <fstream>
  #include "antlr4-runtime.h"
  #include "SysYLexer.h"
  #include "SysYParser.h"
  
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
      
      // ANTLR4 词法分析
      antlr4::ANTLRInputStream input(inputFile);
      SysYLexer lexer(&input);
      antlr4::CommonTokenStream tokens(&lexer);
      
      // ANTLR4 语法分析
      SysYParser parser(&tokens);
      auto tree = parser.compUnit();
      
      // TODO: 语义分析和 IR 生成
      
      // 写入输出文件
      std::ofstream outputFile(argv[2]);
      if (!outputFile.is_open()) {
          std::cerr << "Error: Cannot open output file: " << argv[2] << std::endl;
          return 1;
      }
      
      // outputFile << irCode;
      
      return 0;
  }