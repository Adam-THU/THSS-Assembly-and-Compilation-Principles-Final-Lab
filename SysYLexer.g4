lexer grammar SysYLexer;

// ---------------------
// Keywords
// ---------------------
CONST      : 'const';
INT        : 'int';
VOID       : 'void';
IF         : 'if';
ELSE       : 'else';
WHILE      : 'while';
BREAK      : 'break';
CONTINUE   : 'continue';
RETURN     : 'return';

// ---------------------
// Operators
// ---------------------
ADD        : '+';
SUB        : '-';
MUL        : '*';
DIV        : '/';
MOD        : '%';

EQ         : '==';
NEQ        : '!=';
LT         : '<';
LE         : '<=';
GT         : '>';
GE         : '>=';

AND        : '&&';
OR         : '||';
NOT        : '!';
ASSIGN     : '=';

// ---------------------
// Delimiters
// ---------------------
LPAREN     : '(';
RPAREN     : ')';
LBRACK     : '[';
RBRACK     : ']';
LBRACE     : '{';
RBRACE     : '}';
COMMA      : ',';
SEMI       : ';';

// ---------------------
// Identifier
// ---------------------
IDENT      : IDENT_START IDENT_CHAR*;

fragment IDENT_START : [a-zA-Z_];
fragment IDENT_CHAR  : [a-zA-Z0-9_];

// ---------------------
// Integer Constants
// decimal / octal / hex
// ---------------------
INT_CONST
    : DECIMAL_CONST
    | OCTAL_CONST
    | HEX_CONST
    ;

fragment DECIMAL_CONST : NONZERO_DIGIT DIGIT*;
fragment OCTAL_CONST   : '0' OCTAL_DIGIT*;
fragment HEX_CONST     : HEX_PREFIX HEX_DIGIT+;

fragment DIGIT        : [0-9];
fragment NONZERO_DIGIT: [1-9];
fragment OCTAL_DIGIT  : [0-7];
fragment HEX_PREFIX   : '0' [xX];
fragment HEX_DIGIT    : [0-9a-fA-F];

// ---------------------
// Comments
// ---------------------
LINE_COMMENT
    : '//' ~[\r\n]* -> skip
    ;

BLOCK_COMMENT
    : '/*' .*? '*/' -> skip
    ;

// ---------------------
// Whitespace
// ---------------------
WS
    : [ \t\r\n]+ -> skip
    ;
