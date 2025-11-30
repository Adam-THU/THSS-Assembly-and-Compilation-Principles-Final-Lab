
// Generated from SysYLexer.g4 by ANTLR 4.13.1

#pragma once


#include "antlr4-runtime.h"




class  SysYLexer : public antlr4::Lexer {
public:
  enum {
    CONST = 1, INT = 2, VOID = 3, IF = 4, ELSE = 5, WHILE = 6, BREAK = 7, 
    CONTINUE = 8, RETURN = 9, ADD = 10, SUB = 11, MUL = 12, DIV = 13, MOD = 14, 
    EQ = 15, NEQ = 16, LT = 17, LE = 18, GT = 19, GE = 20, AND = 21, OR = 22, 
    NOT = 23, ASSIGN = 24, LPAREN = 25, RPAREN = 26, LBRACK = 27, RBRACK = 28, 
    LBRACE = 29, RBRACE = 30, COMMA = 31, SEMI = 32, IDENT = 33, INT_CONST = 34, 
    LINE_COMMENT = 35, BLOCK_COMMENT = 36, WS = 37
  };

  explicit SysYLexer(antlr4::CharStream *input);

  ~SysYLexer() override;


  std::string getGrammarFileName() const override;

  const std::vector<std::string>& getRuleNames() const override;

  const std::vector<std::string>& getChannelNames() const override;

  const std::vector<std::string>& getModeNames() const override;

  const antlr4::dfa::Vocabulary& getVocabulary() const override;

  antlr4::atn::SerializedATNView getSerializedATN() const override;

  const antlr4::atn::ATN& getATN() const override;

  // By default the static state used to implement the lexer is lazily initialized during the first
  // call to the constructor. You can call this function if you wish to initialize the static state
  // ahead of time.
  static void initialize();

private:

  // Individual action functions triggered by action() above.

  // Individual semantic predicate functions triggered by sempred() above.

};

