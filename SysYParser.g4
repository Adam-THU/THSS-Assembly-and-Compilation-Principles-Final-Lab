parser grammar SysYParser;

options {
  tokenVocab = SysYLexer;
}

/*
 Start symbol: compUnit
 A SysY source file may contain zero or more global declarations and function definitions.
*/
compUnit
    : (decl | funcDef)* EOF
    ;

// ---------------------
// Declarations
// ---------------------
decl
    : constDecl
    | varDecl
    ;

constDecl
    : CONST INT constDef (COMMA constDef)* SEMI
    ;

constDef
    : IDENT (LBRACK constExp RBRACK)* ASSIGN constInitVal
    ;

constInitVal
    : constExp
    | LBRACE (constInitVal (COMMA constInitVal)*)? RBRACE
    ;

varDecl
    : INT varDef (COMMA varDef)* SEMI
    ;

varDef
    : IDENT (LBRACK constExp RBRACK)*
      (ASSIGN initVal)?
    ;

initVal
    : exp
    | LBRACE (initVal (COMMA initVal)*)? RBRACE
    ;

// ---------------------
// Functions
// ---------------------
funcDef
    : funcType IDENT LPAREN funcFParams? RPAREN block
    ;

funcType
    : VOID
    | INT
    ;

funcFParams
    : funcFParam (COMMA funcFParam)*
    ;

// FuncFParam → BType Ident ['[' ']' { '[' Exp ']' }]
funcFParam
    : INT IDENT (LBRACK RBRACK (LBRACK exp RBRACK)*)?
    ;

// ---------------------
// Block and Statements
// ---------------------
block
    : LBRACE blockItem* RBRACE
    ;

blockItem
    : decl
    | stmt
    ;

stmt
    : lVal ASSIGN exp SEMI                                // assignment
    | (exp)? SEMI                                         // expression statement (expression can be empty)
    | block                                               // nested block
    | IF LPAREN cond RPAREN stmt (ELSE stmt)?             // if (cond) stmt [else stmt]
    | WHILE LPAREN cond RPAREN stmt                       // while (cond) stmt
    | BREAK SEMI                                          // break;
    | CONTINUE SEMI                                       // continue;
    | RETURN (exp)? SEMI                                  // return [exp];
    ;

// ---------------------
// Expressions & LValues
// ---------------------
exp
    : addExp
    ;

cond
    : lorExp
    ;

lVal
    : IDENT (LBRACK exp RBRACK)*
    ;

// primaryExp -> '(' Exp ')' | LVal | Number
primaryExp
    : LPAREN exp RPAREN
    | lVal
    | number
    ;

// number -> IntConst
number
    : INT_CONST
    ;

// unaryExp -> function call | primaryExp | unaryOp unaryExp
// To correctly parse function calls vs lVal, put function-call alternative first.
unaryExp
    : IDENT LPAREN funcRParams? RPAREN
    | primaryExp
    | unaryOp unaryExp
    ;

// unary operators: + - !
unaryOp
    : ADD
    | SUB
    | NOT
    ;

// funcRParams -> Exp (',' Exp)*
funcRParams
    : exp (COMMA exp)*
    ;

// ---------------------
// Operator precedence rules (bottom = lowest precedence)
// Precedence order (high -> low):
//   parentheses > unary > mul/div/mod > add/sub > relational > equality > logical AND > logical OR
// ---------------------
mulExp
    : unaryExp ( (MUL | DIV | MOD) unaryExp )*
    ;

addExp
    : mulExp ( (ADD | SUB) mulExp )*
    ;

relExp
    : addExp ( (LT | GT | LE | GE) addExp )*
    ;

eqExp
    : relExp ( (EQ | NEQ) relExp )*
    ;

landExp
    : eqExp ( AND eqExp )*
    ;

lorExp
    : landExp ( OR landExp )*
    ;

// ---------------------
// Constant expression used in declarations/dimensions (syntactic only)
// ---------------------
constExp
    : addExp
    ;
