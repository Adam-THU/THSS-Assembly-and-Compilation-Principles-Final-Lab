
// Generated from SysYParser.g4 by ANTLR 4.13.1


#include "SysYParserVisitor.h"

#include "SysYParser.h"


using namespace antlrcpp;

using namespace antlr4;

namespace {

struct SysYParserStaticData final {
  SysYParserStaticData(std::vector<std::string> ruleNames,
                        std::vector<std::string> literalNames,
                        std::vector<std::string> symbolicNames)
      : ruleNames(std::move(ruleNames)), literalNames(std::move(literalNames)),
        symbolicNames(std::move(symbolicNames)),
        vocabulary(this->literalNames, this->symbolicNames) {}

  SysYParserStaticData(const SysYParserStaticData&) = delete;
  SysYParserStaticData(SysYParserStaticData&&) = delete;
  SysYParserStaticData& operator=(const SysYParserStaticData&) = delete;
  SysYParserStaticData& operator=(SysYParserStaticData&&) = delete;

  std::vector<antlr4::dfa::DFA> decisionToDFA;
  antlr4::atn::PredictionContextCache sharedContextCache;
  const std::vector<std::string> ruleNames;
  const std::vector<std::string> literalNames;
  const std::vector<std::string> symbolicNames;
  const antlr4::dfa::Vocabulary vocabulary;
  antlr4::atn::SerializedATNView serializedATN;
  std::unique_ptr<antlr4::atn::ATN> atn;
};

::antlr4::internal::OnceFlag sysyparserParserOnceFlag;
#if ANTLR4_USE_THREAD_LOCAL_CACHE
static thread_local
#endif
SysYParserStaticData *sysyparserParserStaticData = nullptr;

void sysyparserParserInitialize() {
#if ANTLR4_USE_THREAD_LOCAL_CACHE
  if (sysyparserParserStaticData != nullptr) {
    return;
  }
#else
  assert(sysyparserParserStaticData == nullptr);
#endif
  auto staticData = std::make_unique<SysYParserStaticData>(
    std::vector<std::string>{
      "compUnit", "decl", "constDecl", "constDef", "constInitVal", "varDecl", 
      "varDef", "initVal", "funcDef", "funcType", "funcFParams", "funcFParam", 
      "block", "blockItem", "stmt", "exp", "cond", "lVal", "primaryExp", 
      "number", "unaryExp", "unaryOp", "funcRParams", "mulExp", "addExp", 
      "relExp", "eqExp", "landExp", "lorExp", "constExp"
    },
    std::vector<std::string>{
      "", "'const'", "'int'", "'void'", "'if'", "'else'", "'while'", "'break'", 
      "'continue'", "'return'", "'+'", "'-'", "'*'", "'/'", "'%'", "'=='", 
      "'!='", "'<'", "'<='", "'>'", "'>='", "'&&'", "'||'", "'!'", "'='", 
      "'('", "')'", "'['", "']'", "'{'", "'}'", "','", "';'"
    },
    std::vector<std::string>{
      "", "CONST", "INT", "VOID", "IF", "ELSE", "WHILE", "BREAK", "CONTINUE", 
      "RETURN", "ADD", "SUB", "MUL", "DIV", "MOD", "EQ", "NEQ", "LT", "LE", 
      "GT", "GE", "AND", "OR", "NOT", "ASSIGN", "LPAREN", "RPAREN", "LBRACK", 
      "RBRACK", "LBRACE", "RBRACE", "COMMA", "SEMI", "IDENT", "INT_CONST", 
      "LINE_COMMENT", "BLOCK_COMMENT", "WS"
    }
  );
  static const int32_t serializedATNSegment[] = {
  	4,1,37,333,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,2,
  	7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,14,7,
  	14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,2,21,7,
  	21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,27,7,27,2,28,7,
  	28,2,29,7,29,1,0,1,0,5,0,63,8,0,10,0,12,0,66,9,0,1,0,1,0,1,1,1,1,3,1,
  	72,8,1,1,2,1,2,1,2,1,2,1,2,5,2,79,8,2,10,2,12,2,82,9,2,1,2,1,2,1,3,1,
  	3,1,3,1,3,1,3,5,3,91,8,3,10,3,12,3,94,9,3,1,3,1,3,1,3,1,4,1,4,1,4,1,4,
  	1,4,5,4,104,8,4,10,4,12,4,107,9,4,3,4,109,8,4,1,4,3,4,112,8,4,1,5,1,5,
  	1,5,1,5,5,5,118,8,5,10,5,12,5,121,9,5,1,5,1,5,1,6,1,6,1,6,1,6,1,6,5,6,
  	130,8,6,10,6,12,6,133,9,6,1,6,1,6,3,6,137,8,6,1,7,1,7,1,7,1,7,1,7,5,7,
  	144,8,7,10,7,12,7,147,9,7,3,7,149,8,7,1,7,3,7,152,8,7,1,8,1,8,1,8,1,8,
  	3,8,158,8,8,1,8,1,8,1,8,1,9,1,9,1,10,1,10,1,10,5,10,168,8,10,10,10,12,
  	10,171,9,10,1,11,1,11,1,11,1,11,1,11,1,11,1,11,1,11,5,11,181,8,11,10,
  	11,12,11,184,9,11,3,11,186,8,11,1,12,1,12,5,12,190,8,12,10,12,12,12,193,
  	9,12,1,12,1,12,1,13,1,13,3,13,199,8,13,1,14,1,14,1,14,1,14,1,14,1,14,
  	3,14,207,8,14,1,14,1,14,1,14,1,14,1,14,1,14,1,14,1,14,1,14,3,14,218,8,
  	14,1,14,1,14,1,14,1,14,1,14,1,14,1,14,1,14,1,14,1,14,1,14,1,14,3,14,232,
  	8,14,1,14,3,14,235,8,14,1,15,1,15,1,16,1,16,1,17,1,17,1,17,1,17,1,17,
  	5,17,246,8,17,10,17,12,17,249,9,17,1,18,1,18,1,18,1,18,1,18,1,18,3,18,
  	257,8,18,1,19,1,19,1,20,1,20,1,20,3,20,264,8,20,1,20,1,20,1,20,1,20,1,
  	20,3,20,271,8,20,1,21,1,21,1,22,1,22,1,22,5,22,278,8,22,10,22,12,22,281,
  	9,22,1,23,1,23,1,23,5,23,286,8,23,10,23,12,23,289,9,23,1,24,1,24,1,24,
  	5,24,294,8,24,10,24,12,24,297,9,24,1,25,1,25,1,25,5,25,302,8,25,10,25,
  	12,25,305,9,25,1,26,1,26,1,26,5,26,310,8,26,10,26,12,26,313,9,26,1,27,
  	1,27,1,27,5,27,318,8,27,10,27,12,27,321,9,27,1,28,1,28,1,28,5,28,326,
  	8,28,10,28,12,28,329,9,28,1,29,1,29,1,29,0,0,30,0,2,4,6,8,10,12,14,16,
  	18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,0,6,1,
  	0,2,3,2,0,10,11,23,23,1,0,12,14,1,0,10,11,1,0,17,20,1,0,15,16,345,0,64,
  	1,0,0,0,2,71,1,0,0,0,4,73,1,0,0,0,6,85,1,0,0,0,8,111,1,0,0,0,10,113,1,
  	0,0,0,12,124,1,0,0,0,14,151,1,0,0,0,16,153,1,0,0,0,18,162,1,0,0,0,20,
  	164,1,0,0,0,22,172,1,0,0,0,24,187,1,0,0,0,26,198,1,0,0,0,28,234,1,0,0,
  	0,30,236,1,0,0,0,32,238,1,0,0,0,34,240,1,0,0,0,36,256,1,0,0,0,38,258,
  	1,0,0,0,40,270,1,0,0,0,42,272,1,0,0,0,44,274,1,0,0,0,46,282,1,0,0,0,48,
  	290,1,0,0,0,50,298,1,0,0,0,52,306,1,0,0,0,54,314,1,0,0,0,56,322,1,0,0,
  	0,58,330,1,0,0,0,60,63,3,2,1,0,61,63,3,16,8,0,62,60,1,0,0,0,62,61,1,0,
  	0,0,63,66,1,0,0,0,64,62,1,0,0,0,64,65,1,0,0,0,65,67,1,0,0,0,66,64,1,0,
  	0,0,67,68,5,0,0,1,68,1,1,0,0,0,69,72,3,4,2,0,70,72,3,10,5,0,71,69,1,0,
  	0,0,71,70,1,0,0,0,72,3,1,0,0,0,73,74,5,1,0,0,74,75,5,2,0,0,75,80,3,6,
  	3,0,76,77,5,31,0,0,77,79,3,6,3,0,78,76,1,0,0,0,79,82,1,0,0,0,80,78,1,
  	0,0,0,80,81,1,0,0,0,81,83,1,0,0,0,82,80,1,0,0,0,83,84,5,32,0,0,84,5,1,
  	0,0,0,85,92,5,33,0,0,86,87,5,27,0,0,87,88,3,58,29,0,88,89,5,28,0,0,89,
  	91,1,0,0,0,90,86,1,0,0,0,91,94,1,0,0,0,92,90,1,0,0,0,92,93,1,0,0,0,93,
  	95,1,0,0,0,94,92,1,0,0,0,95,96,5,24,0,0,96,97,3,8,4,0,97,7,1,0,0,0,98,
  	112,3,58,29,0,99,108,5,29,0,0,100,105,3,8,4,0,101,102,5,31,0,0,102,104,
  	3,8,4,0,103,101,1,0,0,0,104,107,1,0,0,0,105,103,1,0,0,0,105,106,1,0,0,
  	0,106,109,1,0,0,0,107,105,1,0,0,0,108,100,1,0,0,0,108,109,1,0,0,0,109,
  	110,1,0,0,0,110,112,5,30,0,0,111,98,1,0,0,0,111,99,1,0,0,0,112,9,1,0,
  	0,0,113,114,5,2,0,0,114,119,3,12,6,0,115,116,5,31,0,0,116,118,3,12,6,
  	0,117,115,1,0,0,0,118,121,1,0,0,0,119,117,1,0,0,0,119,120,1,0,0,0,120,
  	122,1,0,0,0,121,119,1,0,0,0,122,123,5,32,0,0,123,11,1,0,0,0,124,131,5,
  	33,0,0,125,126,5,27,0,0,126,127,3,58,29,0,127,128,5,28,0,0,128,130,1,
  	0,0,0,129,125,1,0,0,0,130,133,1,0,0,0,131,129,1,0,0,0,131,132,1,0,0,0,
  	132,136,1,0,0,0,133,131,1,0,0,0,134,135,5,24,0,0,135,137,3,14,7,0,136,
  	134,1,0,0,0,136,137,1,0,0,0,137,13,1,0,0,0,138,152,3,30,15,0,139,148,
  	5,29,0,0,140,145,3,14,7,0,141,142,5,31,0,0,142,144,3,14,7,0,143,141,1,
  	0,0,0,144,147,1,0,0,0,145,143,1,0,0,0,145,146,1,0,0,0,146,149,1,0,0,0,
  	147,145,1,0,0,0,148,140,1,0,0,0,148,149,1,0,0,0,149,150,1,0,0,0,150,152,
  	5,30,0,0,151,138,1,0,0,0,151,139,1,0,0,0,152,15,1,0,0,0,153,154,3,18,
  	9,0,154,155,5,33,0,0,155,157,5,25,0,0,156,158,3,20,10,0,157,156,1,0,0,
  	0,157,158,1,0,0,0,158,159,1,0,0,0,159,160,5,26,0,0,160,161,3,24,12,0,
  	161,17,1,0,0,0,162,163,7,0,0,0,163,19,1,0,0,0,164,169,3,22,11,0,165,166,
  	5,31,0,0,166,168,3,22,11,0,167,165,1,0,0,0,168,171,1,0,0,0,169,167,1,
  	0,0,0,169,170,1,0,0,0,170,21,1,0,0,0,171,169,1,0,0,0,172,173,5,2,0,0,
  	173,185,5,33,0,0,174,175,5,27,0,0,175,182,5,28,0,0,176,177,5,27,0,0,177,
  	178,3,30,15,0,178,179,5,28,0,0,179,181,1,0,0,0,180,176,1,0,0,0,181,184,
  	1,0,0,0,182,180,1,0,0,0,182,183,1,0,0,0,183,186,1,0,0,0,184,182,1,0,0,
  	0,185,174,1,0,0,0,185,186,1,0,0,0,186,23,1,0,0,0,187,191,5,29,0,0,188,
  	190,3,26,13,0,189,188,1,0,0,0,190,193,1,0,0,0,191,189,1,0,0,0,191,192,
  	1,0,0,0,192,194,1,0,0,0,193,191,1,0,0,0,194,195,5,30,0,0,195,25,1,0,0,
  	0,196,199,3,2,1,0,197,199,3,28,14,0,198,196,1,0,0,0,198,197,1,0,0,0,199,
  	27,1,0,0,0,200,201,3,34,17,0,201,202,5,24,0,0,202,203,3,30,15,0,203,204,
  	5,32,0,0,204,235,1,0,0,0,205,207,3,30,15,0,206,205,1,0,0,0,206,207,1,
  	0,0,0,207,208,1,0,0,0,208,235,5,32,0,0,209,235,3,24,12,0,210,211,5,4,
  	0,0,211,212,5,25,0,0,212,213,3,32,16,0,213,214,5,26,0,0,214,217,3,28,
  	14,0,215,216,5,5,0,0,216,218,3,28,14,0,217,215,1,0,0,0,217,218,1,0,0,
  	0,218,235,1,0,0,0,219,220,5,6,0,0,220,221,5,25,0,0,221,222,3,32,16,0,
  	222,223,5,26,0,0,223,224,3,28,14,0,224,235,1,0,0,0,225,226,5,7,0,0,226,
  	235,5,32,0,0,227,228,5,8,0,0,228,235,5,32,0,0,229,231,5,9,0,0,230,232,
  	3,30,15,0,231,230,1,0,0,0,231,232,1,0,0,0,232,233,1,0,0,0,233,235,5,32,
  	0,0,234,200,1,0,0,0,234,206,1,0,0,0,234,209,1,0,0,0,234,210,1,0,0,0,234,
  	219,1,0,0,0,234,225,1,0,0,0,234,227,1,0,0,0,234,229,1,0,0,0,235,29,1,
  	0,0,0,236,237,3,48,24,0,237,31,1,0,0,0,238,239,3,56,28,0,239,33,1,0,0,
  	0,240,247,5,33,0,0,241,242,5,27,0,0,242,243,3,30,15,0,243,244,5,28,0,
  	0,244,246,1,0,0,0,245,241,1,0,0,0,246,249,1,0,0,0,247,245,1,0,0,0,247,
  	248,1,0,0,0,248,35,1,0,0,0,249,247,1,0,0,0,250,251,5,25,0,0,251,252,3,
  	30,15,0,252,253,5,26,0,0,253,257,1,0,0,0,254,257,3,34,17,0,255,257,3,
  	38,19,0,256,250,1,0,0,0,256,254,1,0,0,0,256,255,1,0,0,0,257,37,1,0,0,
  	0,258,259,5,34,0,0,259,39,1,0,0,0,260,261,5,33,0,0,261,263,5,25,0,0,262,
  	264,3,44,22,0,263,262,1,0,0,0,263,264,1,0,0,0,264,265,1,0,0,0,265,271,
  	5,26,0,0,266,271,3,36,18,0,267,268,3,42,21,0,268,269,3,40,20,0,269,271,
  	1,0,0,0,270,260,1,0,0,0,270,266,1,0,0,0,270,267,1,0,0,0,271,41,1,0,0,
  	0,272,273,7,1,0,0,273,43,1,0,0,0,274,279,3,30,15,0,275,276,5,31,0,0,276,
  	278,3,30,15,0,277,275,1,0,0,0,278,281,1,0,0,0,279,277,1,0,0,0,279,280,
  	1,0,0,0,280,45,1,0,0,0,281,279,1,0,0,0,282,287,3,40,20,0,283,284,7,2,
  	0,0,284,286,3,40,20,0,285,283,1,0,0,0,286,289,1,0,0,0,287,285,1,0,0,0,
  	287,288,1,0,0,0,288,47,1,0,0,0,289,287,1,0,0,0,290,295,3,46,23,0,291,
  	292,7,3,0,0,292,294,3,46,23,0,293,291,1,0,0,0,294,297,1,0,0,0,295,293,
  	1,0,0,0,295,296,1,0,0,0,296,49,1,0,0,0,297,295,1,0,0,0,298,303,3,48,24,
  	0,299,300,7,4,0,0,300,302,3,48,24,0,301,299,1,0,0,0,302,305,1,0,0,0,303,
  	301,1,0,0,0,303,304,1,0,0,0,304,51,1,0,0,0,305,303,1,0,0,0,306,311,3,
  	50,25,0,307,308,7,5,0,0,308,310,3,50,25,0,309,307,1,0,0,0,310,313,1,0,
  	0,0,311,309,1,0,0,0,311,312,1,0,0,0,312,53,1,0,0,0,313,311,1,0,0,0,314,
  	319,3,52,26,0,315,316,5,21,0,0,316,318,3,52,26,0,317,315,1,0,0,0,318,
  	321,1,0,0,0,319,317,1,0,0,0,319,320,1,0,0,0,320,55,1,0,0,0,321,319,1,
  	0,0,0,322,327,3,54,27,0,323,324,5,22,0,0,324,326,3,54,27,0,325,323,1,
  	0,0,0,326,329,1,0,0,0,327,325,1,0,0,0,327,328,1,0,0,0,328,57,1,0,0,0,
  	329,327,1,0,0,0,330,331,3,48,24,0,331,59,1,0,0,0,35,62,64,71,80,92,105,
  	108,111,119,131,136,145,148,151,157,169,182,185,191,198,206,217,231,234,
  	247,256,263,270,279,287,295,303,311,319,327
  };
  staticData->serializedATN = antlr4::atn::SerializedATNView(serializedATNSegment, sizeof(serializedATNSegment) / sizeof(serializedATNSegment[0]));

  antlr4::atn::ATNDeserializer deserializer;
  staticData->atn = deserializer.deserialize(staticData->serializedATN);

  const size_t count = staticData->atn->getNumberOfDecisions();
  staticData->decisionToDFA.reserve(count);
  for (size_t i = 0; i < count; i++) { 
    staticData->decisionToDFA.emplace_back(staticData->atn->getDecisionState(i), i);
  }
  sysyparserParserStaticData = staticData.release();
}

}

SysYParser::SysYParser(TokenStream *input) : SysYParser(input, antlr4::atn::ParserATNSimulatorOptions()) {}

SysYParser::SysYParser(TokenStream *input, const antlr4::atn::ParserATNSimulatorOptions &options) : Parser(input) {
  SysYParser::initialize();
  _interpreter = new atn::ParserATNSimulator(this, *sysyparserParserStaticData->atn, sysyparserParserStaticData->decisionToDFA, sysyparserParserStaticData->sharedContextCache, options);
}

SysYParser::~SysYParser() {
  delete _interpreter;
}

const atn::ATN& SysYParser::getATN() const {
  return *sysyparserParserStaticData->atn;
}

std::string SysYParser::getGrammarFileName() const {
  return "SysYParser.g4";
}

const std::vector<std::string>& SysYParser::getRuleNames() const {
  return sysyparserParserStaticData->ruleNames;
}

const dfa::Vocabulary& SysYParser::getVocabulary() const {
  return sysyparserParserStaticData->vocabulary;
}

antlr4::atn::SerializedATNView SysYParser::getSerializedATN() const {
  return sysyparserParserStaticData->serializedATN;
}


//----------------- CompUnitContext ------------------------------------------------------------------

SysYParser::CompUnitContext::CompUnitContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* SysYParser::CompUnitContext::EOF() {
  return getToken(SysYParser::EOF, 0);
}

std::vector<SysYParser::DeclContext *> SysYParser::CompUnitContext::decl() {
  return getRuleContexts<SysYParser::DeclContext>();
}

SysYParser::DeclContext* SysYParser::CompUnitContext::decl(size_t i) {
  return getRuleContext<SysYParser::DeclContext>(i);
}

std::vector<SysYParser::FuncDefContext *> SysYParser::CompUnitContext::funcDef() {
  return getRuleContexts<SysYParser::FuncDefContext>();
}

SysYParser::FuncDefContext* SysYParser::CompUnitContext::funcDef(size_t i) {
  return getRuleContext<SysYParser::FuncDefContext>(i);
}


size_t SysYParser::CompUnitContext::getRuleIndex() const {
  return SysYParser::RuleCompUnit;
}


std::any SysYParser::CompUnitContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitCompUnit(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::CompUnitContext* SysYParser::compUnit() {
  CompUnitContext *_localctx = _tracker.createInstance<CompUnitContext>(_ctx, getState());
  enterRule(_localctx, 0, SysYParser::RuleCompUnit);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(64);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while ((((_la & ~ 0x3fULL) == 0) &&
      ((1ULL << _la) & 14) != 0)) {
      setState(62);
      _errHandler->sync(this);
      switch (getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 0, _ctx)) {
      case 1: {
        setState(60);
        decl();
        break;
      }

      case 2: {
        setState(61);
        funcDef();
        break;
      }

      default:
        break;
      }
      setState(66);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
    setState(67);
    match(SysYParser::EOF);
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- DeclContext ------------------------------------------------------------------

SysYParser::DeclContext::DeclContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

SysYParser::ConstDeclContext* SysYParser::DeclContext::constDecl() {
  return getRuleContext<SysYParser::ConstDeclContext>(0);
}

SysYParser::VarDeclContext* SysYParser::DeclContext::varDecl() {
  return getRuleContext<SysYParser::VarDeclContext>(0);
}


size_t SysYParser::DeclContext::getRuleIndex() const {
  return SysYParser::RuleDecl;
}


std::any SysYParser::DeclContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitDecl(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::DeclContext* SysYParser::decl() {
  DeclContext *_localctx = _tracker.createInstance<DeclContext>(_ctx, getState());
  enterRule(_localctx, 2, SysYParser::RuleDecl);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    setState(71);
    _errHandler->sync(this);
    switch (_input->LA(1)) {
      case SysYParser::CONST: {
        enterOuterAlt(_localctx, 1);
        setState(69);
        constDecl();
        break;
      }

      case SysYParser::INT: {
        enterOuterAlt(_localctx, 2);
        setState(70);
        varDecl();
        break;
      }

    default:
      throw NoViableAltException(this);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- ConstDeclContext ------------------------------------------------------------------

SysYParser::ConstDeclContext::ConstDeclContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* SysYParser::ConstDeclContext::CONST() {
  return getToken(SysYParser::CONST, 0);
}

tree::TerminalNode* SysYParser::ConstDeclContext::INT() {
  return getToken(SysYParser::INT, 0);
}

std::vector<SysYParser::ConstDefContext *> SysYParser::ConstDeclContext::constDef() {
  return getRuleContexts<SysYParser::ConstDefContext>();
}

SysYParser::ConstDefContext* SysYParser::ConstDeclContext::constDef(size_t i) {
  return getRuleContext<SysYParser::ConstDefContext>(i);
}

tree::TerminalNode* SysYParser::ConstDeclContext::SEMI() {
  return getToken(SysYParser::SEMI, 0);
}

std::vector<tree::TerminalNode *> SysYParser::ConstDeclContext::COMMA() {
  return getTokens(SysYParser::COMMA);
}

tree::TerminalNode* SysYParser::ConstDeclContext::COMMA(size_t i) {
  return getToken(SysYParser::COMMA, i);
}


size_t SysYParser::ConstDeclContext::getRuleIndex() const {
  return SysYParser::RuleConstDecl;
}


std::any SysYParser::ConstDeclContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitConstDecl(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::ConstDeclContext* SysYParser::constDecl() {
  ConstDeclContext *_localctx = _tracker.createInstance<ConstDeclContext>(_ctx, getState());
  enterRule(_localctx, 4, SysYParser::RuleConstDecl);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(73);
    match(SysYParser::CONST);
    setState(74);
    match(SysYParser::INT);
    setState(75);
    constDef();
    setState(80);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while (_la == SysYParser::COMMA) {
      setState(76);
      match(SysYParser::COMMA);
      setState(77);
      constDef();
      setState(82);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
    setState(83);
    match(SysYParser::SEMI);
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- ConstDefContext ------------------------------------------------------------------

SysYParser::ConstDefContext::ConstDefContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* SysYParser::ConstDefContext::IDENT() {
  return getToken(SysYParser::IDENT, 0);
}

tree::TerminalNode* SysYParser::ConstDefContext::ASSIGN() {
  return getToken(SysYParser::ASSIGN, 0);
}

SysYParser::ConstInitValContext* SysYParser::ConstDefContext::constInitVal() {
  return getRuleContext<SysYParser::ConstInitValContext>(0);
}

std::vector<tree::TerminalNode *> SysYParser::ConstDefContext::LBRACK() {
  return getTokens(SysYParser::LBRACK);
}

tree::TerminalNode* SysYParser::ConstDefContext::LBRACK(size_t i) {
  return getToken(SysYParser::LBRACK, i);
}

std::vector<SysYParser::ConstExpContext *> SysYParser::ConstDefContext::constExp() {
  return getRuleContexts<SysYParser::ConstExpContext>();
}

SysYParser::ConstExpContext* SysYParser::ConstDefContext::constExp(size_t i) {
  return getRuleContext<SysYParser::ConstExpContext>(i);
}

std::vector<tree::TerminalNode *> SysYParser::ConstDefContext::RBRACK() {
  return getTokens(SysYParser::RBRACK);
}

tree::TerminalNode* SysYParser::ConstDefContext::RBRACK(size_t i) {
  return getToken(SysYParser::RBRACK, i);
}


size_t SysYParser::ConstDefContext::getRuleIndex() const {
  return SysYParser::RuleConstDef;
}


std::any SysYParser::ConstDefContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitConstDef(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::ConstDefContext* SysYParser::constDef() {
  ConstDefContext *_localctx = _tracker.createInstance<ConstDefContext>(_ctx, getState());
  enterRule(_localctx, 6, SysYParser::RuleConstDef);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(85);
    match(SysYParser::IDENT);
    setState(92);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while (_la == SysYParser::LBRACK) {
      setState(86);
      match(SysYParser::LBRACK);
      setState(87);
      constExp();
      setState(88);
      match(SysYParser::RBRACK);
      setState(94);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
    setState(95);
    match(SysYParser::ASSIGN);
    setState(96);
    constInitVal();
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- ConstInitValContext ------------------------------------------------------------------

SysYParser::ConstInitValContext::ConstInitValContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

SysYParser::ConstExpContext* SysYParser::ConstInitValContext::constExp() {
  return getRuleContext<SysYParser::ConstExpContext>(0);
}

tree::TerminalNode* SysYParser::ConstInitValContext::LBRACE() {
  return getToken(SysYParser::LBRACE, 0);
}

tree::TerminalNode* SysYParser::ConstInitValContext::RBRACE() {
  return getToken(SysYParser::RBRACE, 0);
}

std::vector<SysYParser::ConstInitValContext *> SysYParser::ConstInitValContext::constInitVal() {
  return getRuleContexts<SysYParser::ConstInitValContext>();
}

SysYParser::ConstInitValContext* SysYParser::ConstInitValContext::constInitVal(size_t i) {
  return getRuleContext<SysYParser::ConstInitValContext>(i);
}

std::vector<tree::TerminalNode *> SysYParser::ConstInitValContext::COMMA() {
  return getTokens(SysYParser::COMMA);
}

tree::TerminalNode* SysYParser::ConstInitValContext::COMMA(size_t i) {
  return getToken(SysYParser::COMMA, i);
}


size_t SysYParser::ConstInitValContext::getRuleIndex() const {
  return SysYParser::RuleConstInitVal;
}


std::any SysYParser::ConstInitValContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitConstInitVal(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::ConstInitValContext* SysYParser::constInitVal() {
  ConstInitValContext *_localctx = _tracker.createInstance<ConstInitValContext>(_ctx, getState());
  enterRule(_localctx, 8, SysYParser::RuleConstInitVal);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    setState(111);
    _errHandler->sync(this);
    switch (_input->LA(1)) {
      case SysYParser::ADD:
      case SysYParser::SUB:
      case SysYParser::NOT:
      case SysYParser::LPAREN:
      case SysYParser::IDENT:
      case SysYParser::INT_CONST: {
        enterOuterAlt(_localctx, 1);
        setState(98);
        constExp();
        break;
      }

      case SysYParser::LBRACE: {
        enterOuterAlt(_localctx, 2);
        setState(99);
        match(SysYParser::LBRACE);
        setState(108);
        _errHandler->sync(this);

        _la = _input->LA(1);
        if ((((_la & ~ 0x3fULL) == 0) &&
          ((1ULL << _la) & 26348620800) != 0)) {
          setState(100);
          constInitVal();
          setState(105);
          _errHandler->sync(this);
          _la = _input->LA(1);
          while (_la == SysYParser::COMMA) {
            setState(101);
            match(SysYParser::COMMA);
            setState(102);
            constInitVal();
            setState(107);
            _errHandler->sync(this);
            _la = _input->LA(1);
          }
        }
        setState(110);
        match(SysYParser::RBRACE);
        break;
      }

    default:
      throw NoViableAltException(this);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- VarDeclContext ------------------------------------------------------------------

SysYParser::VarDeclContext::VarDeclContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* SysYParser::VarDeclContext::INT() {
  return getToken(SysYParser::INT, 0);
}

std::vector<SysYParser::VarDefContext *> SysYParser::VarDeclContext::varDef() {
  return getRuleContexts<SysYParser::VarDefContext>();
}

SysYParser::VarDefContext* SysYParser::VarDeclContext::varDef(size_t i) {
  return getRuleContext<SysYParser::VarDefContext>(i);
}

tree::TerminalNode* SysYParser::VarDeclContext::SEMI() {
  return getToken(SysYParser::SEMI, 0);
}

std::vector<tree::TerminalNode *> SysYParser::VarDeclContext::COMMA() {
  return getTokens(SysYParser::COMMA);
}

tree::TerminalNode* SysYParser::VarDeclContext::COMMA(size_t i) {
  return getToken(SysYParser::COMMA, i);
}


size_t SysYParser::VarDeclContext::getRuleIndex() const {
  return SysYParser::RuleVarDecl;
}


std::any SysYParser::VarDeclContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitVarDecl(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::VarDeclContext* SysYParser::varDecl() {
  VarDeclContext *_localctx = _tracker.createInstance<VarDeclContext>(_ctx, getState());
  enterRule(_localctx, 10, SysYParser::RuleVarDecl);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(113);
    match(SysYParser::INT);
    setState(114);
    varDef();
    setState(119);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while (_la == SysYParser::COMMA) {
      setState(115);
      match(SysYParser::COMMA);
      setState(116);
      varDef();
      setState(121);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
    setState(122);
    match(SysYParser::SEMI);
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- VarDefContext ------------------------------------------------------------------

SysYParser::VarDefContext::VarDefContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* SysYParser::VarDefContext::IDENT() {
  return getToken(SysYParser::IDENT, 0);
}

std::vector<tree::TerminalNode *> SysYParser::VarDefContext::LBRACK() {
  return getTokens(SysYParser::LBRACK);
}

tree::TerminalNode* SysYParser::VarDefContext::LBRACK(size_t i) {
  return getToken(SysYParser::LBRACK, i);
}

std::vector<SysYParser::ConstExpContext *> SysYParser::VarDefContext::constExp() {
  return getRuleContexts<SysYParser::ConstExpContext>();
}

SysYParser::ConstExpContext* SysYParser::VarDefContext::constExp(size_t i) {
  return getRuleContext<SysYParser::ConstExpContext>(i);
}

std::vector<tree::TerminalNode *> SysYParser::VarDefContext::RBRACK() {
  return getTokens(SysYParser::RBRACK);
}

tree::TerminalNode* SysYParser::VarDefContext::RBRACK(size_t i) {
  return getToken(SysYParser::RBRACK, i);
}

tree::TerminalNode* SysYParser::VarDefContext::ASSIGN() {
  return getToken(SysYParser::ASSIGN, 0);
}

SysYParser::InitValContext* SysYParser::VarDefContext::initVal() {
  return getRuleContext<SysYParser::InitValContext>(0);
}


size_t SysYParser::VarDefContext::getRuleIndex() const {
  return SysYParser::RuleVarDef;
}


std::any SysYParser::VarDefContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitVarDef(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::VarDefContext* SysYParser::varDef() {
  VarDefContext *_localctx = _tracker.createInstance<VarDefContext>(_ctx, getState());
  enterRule(_localctx, 12, SysYParser::RuleVarDef);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(124);
    match(SysYParser::IDENT);
    setState(131);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while (_la == SysYParser::LBRACK) {
      setState(125);
      match(SysYParser::LBRACK);
      setState(126);
      constExp();
      setState(127);
      match(SysYParser::RBRACK);
      setState(133);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
    setState(136);
    _errHandler->sync(this);

    _la = _input->LA(1);
    if (_la == SysYParser::ASSIGN) {
      setState(134);
      match(SysYParser::ASSIGN);
      setState(135);
      initVal();
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- InitValContext ------------------------------------------------------------------

SysYParser::InitValContext::InitValContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

SysYParser::ExpContext* SysYParser::InitValContext::exp() {
  return getRuleContext<SysYParser::ExpContext>(0);
}

tree::TerminalNode* SysYParser::InitValContext::LBRACE() {
  return getToken(SysYParser::LBRACE, 0);
}

tree::TerminalNode* SysYParser::InitValContext::RBRACE() {
  return getToken(SysYParser::RBRACE, 0);
}

std::vector<SysYParser::InitValContext *> SysYParser::InitValContext::initVal() {
  return getRuleContexts<SysYParser::InitValContext>();
}

SysYParser::InitValContext* SysYParser::InitValContext::initVal(size_t i) {
  return getRuleContext<SysYParser::InitValContext>(i);
}

std::vector<tree::TerminalNode *> SysYParser::InitValContext::COMMA() {
  return getTokens(SysYParser::COMMA);
}

tree::TerminalNode* SysYParser::InitValContext::COMMA(size_t i) {
  return getToken(SysYParser::COMMA, i);
}


size_t SysYParser::InitValContext::getRuleIndex() const {
  return SysYParser::RuleInitVal;
}


std::any SysYParser::InitValContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitInitVal(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::InitValContext* SysYParser::initVal() {
  InitValContext *_localctx = _tracker.createInstance<InitValContext>(_ctx, getState());
  enterRule(_localctx, 14, SysYParser::RuleInitVal);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    setState(151);
    _errHandler->sync(this);
    switch (_input->LA(1)) {
      case SysYParser::ADD:
      case SysYParser::SUB:
      case SysYParser::NOT:
      case SysYParser::LPAREN:
      case SysYParser::IDENT:
      case SysYParser::INT_CONST: {
        enterOuterAlt(_localctx, 1);
        setState(138);
        exp();
        break;
      }

      case SysYParser::LBRACE: {
        enterOuterAlt(_localctx, 2);
        setState(139);
        match(SysYParser::LBRACE);
        setState(148);
        _errHandler->sync(this);

        _la = _input->LA(1);
        if ((((_la & ~ 0x3fULL) == 0) &&
          ((1ULL << _la) & 26348620800) != 0)) {
          setState(140);
          initVal();
          setState(145);
          _errHandler->sync(this);
          _la = _input->LA(1);
          while (_la == SysYParser::COMMA) {
            setState(141);
            match(SysYParser::COMMA);
            setState(142);
            initVal();
            setState(147);
            _errHandler->sync(this);
            _la = _input->LA(1);
          }
        }
        setState(150);
        match(SysYParser::RBRACE);
        break;
      }

    default:
      throw NoViableAltException(this);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- FuncDefContext ------------------------------------------------------------------

SysYParser::FuncDefContext::FuncDefContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

SysYParser::FuncTypeContext* SysYParser::FuncDefContext::funcType() {
  return getRuleContext<SysYParser::FuncTypeContext>(0);
}

tree::TerminalNode* SysYParser::FuncDefContext::IDENT() {
  return getToken(SysYParser::IDENT, 0);
}

tree::TerminalNode* SysYParser::FuncDefContext::LPAREN() {
  return getToken(SysYParser::LPAREN, 0);
}

tree::TerminalNode* SysYParser::FuncDefContext::RPAREN() {
  return getToken(SysYParser::RPAREN, 0);
}

SysYParser::BlockContext* SysYParser::FuncDefContext::block() {
  return getRuleContext<SysYParser::BlockContext>(0);
}

SysYParser::FuncFParamsContext* SysYParser::FuncDefContext::funcFParams() {
  return getRuleContext<SysYParser::FuncFParamsContext>(0);
}


size_t SysYParser::FuncDefContext::getRuleIndex() const {
  return SysYParser::RuleFuncDef;
}


std::any SysYParser::FuncDefContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitFuncDef(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::FuncDefContext* SysYParser::funcDef() {
  FuncDefContext *_localctx = _tracker.createInstance<FuncDefContext>(_ctx, getState());
  enterRule(_localctx, 16, SysYParser::RuleFuncDef);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(153);
    funcType();
    setState(154);
    match(SysYParser::IDENT);
    setState(155);
    match(SysYParser::LPAREN);
    setState(157);
    _errHandler->sync(this);

    _la = _input->LA(1);
    if (_la == SysYParser::INT) {
      setState(156);
      funcFParams();
    }
    setState(159);
    match(SysYParser::RPAREN);
    setState(160);
    block();
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- FuncTypeContext ------------------------------------------------------------------

SysYParser::FuncTypeContext::FuncTypeContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* SysYParser::FuncTypeContext::VOID() {
  return getToken(SysYParser::VOID, 0);
}

tree::TerminalNode* SysYParser::FuncTypeContext::INT() {
  return getToken(SysYParser::INT, 0);
}


size_t SysYParser::FuncTypeContext::getRuleIndex() const {
  return SysYParser::RuleFuncType;
}


std::any SysYParser::FuncTypeContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitFuncType(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::FuncTypeContext* SysYParser::funcType() {
  FuncTypeContext *_localctx = _tracker.createInstance<FuncTypeContext>(_ctx, getState());
  enterRule(_localctx, 18, SysYParser::RuleFuncType);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(162);
    _la = _input->LA(1);
    if (!(_la == SysYParser::INT

    || _la == SysYParser::VOID)) {
    _errHandler->recoverInline(this);
    }
    else {
      _errHandler->reportMatch(this);
      consume();
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- FuncFParamsContext ------------------------------------------------------------------

SysYParser::FuncFParamsContext::FuncFParamsContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

std::vector<SysYParser::FuncFParamContext *> SysYParser::FuncFParamsContext::funcFParam() {
  return getRuleContexts<SysYParser::FuncFParamContext>();
}

SysYParser::FuncFParamContext* SysYParser::FuncFParamsContext::funcFParam(size_t i) {
  return getRuleContext<SysYParser::FuncFParamContext>(i);
}

std::vector<tree::TerminalNode *> SysYParser::FuncFParamsContext::COMMA() {
  return getTokens(SysYParser::COMMA);
}

tree::TerminalNode* SysYParser::FuncFParamsContext::COMMA(size_t i) {
  return getToken(SysYParser::COMMA, i);
}


size_t SysYParser::FuncFParamsContext::getRuleIndex() const {
  return SysYParser::RuleFuncFParams;
}


std::any SysYParser::FuncFParamsContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitFuncFParams(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::FuncFParamsContext* SysYParser::funcFParams() {
  FuncFParamsContext *_localctx = _tracker.createInstance<FuncFParamsContext>(_ctx, getState());
  enterRule(_localctx, 20, SysYParser::RuleFuncFParams);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(164);
    funcFParam();
    setState(169);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while (_la == SysYParser::COMMA) {
      setState(165);
      match(SysYParser::COMMA);
      setState(166);
      funcFParam();
      setState(171);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- FuncFParamContext ------------------------------------------------------------------

SysYParser::FuncFParamContext::FuncFParamContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* SysYParser::FuncFParamContext::INT() {
  return getToken(SysYParser::INT, 0);
}

tree::TerminalNode* SysYParser::FuncFParamContext::IDENT() {
  return getToken(SysYParser::IDENT, 0);
}

std::vector<tree::TerminalNode *> SysYParser::FuncFParamContext::LBRACK() {
  return getTokens(SysYParser::LBRACK);
}

tree::TerminalNode* SysYParser::FuncFParamContext::LBRACK(size_t i) {
  return getToken(SysYParser::LBRACK, i);
}

std::vector<tree::TerminalNode *> SysYParser::FuncFParamContext::RBRACK() {
  return getTokens(SysYParser::RBRACK);
}

tree::TerminalNode* SysYParser::FuncFParamContext::RBRACK(size_t i) {
  return getToken(SysYParser::RBRACK, i);
}

std::vector<SysYParser::ExpContext *> SysYParser::FuncFParamContext::exp() {
  return getRuleContexts<SysYParser::ExpContext>();
}

SysYParser::ExpContext* SysYParser::FuncFParamContext::exp(size_t i) {
  return getRuleContext<SysYParser::ExpContext>(i);
}


size_t SysYParser::FuncFParamContext::getRuleIndex() const {
  return SysYParser::RuleFuncFParam;
}


std::any SysYParser::FuncFParamContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitFuncFParam(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::FuncFParamContext* SysYParser::funcFParam() {
  FuncFParamContext *_localctx = _tracker.createInstance<FuncFParamContext>(_ctx, getState());
  enterRule(_localctx, 22, SysYParser::RuleFuncFParam);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(172);
    match(SysYParser::INT);
    setState(173);
    match(SysYParser::IDENT);
    setState(185);
    _errHandler->sync(this);

    _la = _input->LA(1);
    if (_la == SysYParser::LBRACK) {
      setState(174);
      match(SysYParser::LBRACK);
      setState(175);
      match(SysYParser::RBRACK);
      setState(182);
      _errHandler->sync(this);
      _la = _input->LA(1);
      while (_la == SysYParser::LBRACK) {
        setState(176);
        match(SysYParser::LBRACK);
        setState(177);
        exp();
        setState(178);
        match(SysYParser::RBRACK);
        setState(184);
        _errHandler->sync(this);
        _la = _input->LA(1);
      }
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- BlockContext ------------------------------------------------------------------

SysYParser::BlockContext::BlockContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* SysYParser::BlockContext::LBRACE() {
  return getToken(SysYParser::LBRACE, 0);
}

tree::TerminalNode* SysYParser::BlockContext::RBRACE() {
  return getToken(SysYParser::RBRACE, 0);
}

std::vector<SysYParser::BlockItemContext *> SysYParser::BlockContext::blockItem() {
  return getRuleContexts<SysYParser::BlockItemContext>();
}

SysYParser::BlockItemContext* SysYParser::BlockContext::blockItem(size_t i) {
  return getRuleContext<SysYParser::BlockItemContext>(i);
}


size_t SysYParser::BlockContext::getRuleIndex() const {
  return SysYParser::RuleBlock;
}


std::any SysYParser::BlockContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitBlock(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::BlockContext* SysYParser::block() {
  BlockContext *_localctx = _tracker.createInstance<BlockContext>(_ctx, getState());
  enterRule(_localctx, 24, SysYParser::RuleBlock);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(187);
    match(SysYParser::LBRACE);
    setState(191);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while ((((_la & ~ 0x3fULL) == 0) &&
      ((1ULL << _la) & 30643589078) != 0)) {
      setState(188);
      blockItem();
      setState(193);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
    setState(194);
    match(SysYParser::RBRACE);
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- BlockItemContext ------------------------------------------------------------------

SysYParser::BlockItemContext::BlockItemContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

SysYParser::DeclContext* SysYParser::BlockItemContext::decl() {
  return getRuleContext<SysYParser::DeclContext>(0);
}

SysYParser::StmtContext* SysYParser::BlockItemContext::stmt() {
  return getRuleContext<SysYParser::StmtContext>(0);
}


size_t SysYParser::BlockItemContext::getRuleIndex() const {
  return SysYParser::RuleBlockItem;
}


std::any SysYParser::BlockItemContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitBlockItem(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::BlockItemContext* SysYParser::blockItem() {
  BlockItemContext *_localctx = _tracker.createInstance<BlockItemContext>(_ctx, getState());
  enterRule(_localctx, 26, SysYParser::RuleBlockItem);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    setState(198);
    _errHandler->sync(this);
    switch (_input->LA(1)) {
      case SysYParser::CONST:
      case SysYParser::INT: {
        enterOuterAlt(_localctx, 1);
        setState(196);
        decl();
        break;
      }

      case SysYParser::IF:
      case SysYParser::WHILE:
      case SysYParser::BREAK:
      case SysYParser::CONTINUE:
      case SysYParser::RETURN:
      case SysYParser::ADD:
      case SysYParser::SUB:
      case SysYParser::NOT:
      case SysYParser::LPAREN:
      case SysYParser::LBRACE:
      case SysYParser::SEMI:
      case SysYParser::IDENT:
      case SysYParser::INT_CONST: {
        enterOuterAlt(_localctx, 2);
        setState(197);
        stmt();
        break;
      }

    default:
      throw NoViableAltException(this);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- StmtContext ------------------------------------------------------------------

SysYParser::StmtContext::StmtContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

SysYParser::LValContext* SysYParser::StmtContext::lVal() {
  return getRuleContext<SysYParser::LValContext>(0);
}

tree::TerminalNode* SysYParser::StmtContext::ASSIGN() {
  return getToken(SysYParser::ASSIGN, 0);
}

SysYParser::ExpContext* SysYParser::StmtContext::exp() {
  return getRuleContext<SysYParser::ExpContext>(0);
}

tree::TerminalNode* SysYParser::StmtContext::SEMI() {
  return getToken(SysYParser::SEMI, 0);
}

SysYParser::BlockContext* SysYParser::StmtContext::block() {
  return getRuleContext<SysYParser::BlockContext>(0);
}

tree::TerminalNode* SysYParser::StmtContext::IF() {
  return getToken(SysYParser::IF, 0);
}

tree::TerminalNode* SysYParser::StmtContext::LPAREN() {
  return getToken(SysYParser::LPAREN, 0);
}

SysYParser::CondContext* SysYParser::StmtContext::cond() {
  return getRuleContext<SysYParser::CondContext>(0);
}

tree::TerminalNode* SysYParser::StmtContext::RPAREN() {
  return getToken(SysYParser::RPAREN, 0);
}

std::vector<SysYParser::StmtContext *> SysYParser::StmtContext::stmt() {
  return getRuleContexts<SysYParser::StmtContext>();
}

SysYParser::StmtContext* SysYParser::StmtContext::stmt(size_t i) {
  return getRuleContext<SysYParser::StmtContext>(i);
}

tree::TerminalNode* SysYParser::StmtContext::ELSE() {
  return getToken(SysYParser::ELSE, 0);
}

tree::TerminalNode* SysYParser::StmtContext::WHILE() {
  return getToken(SysYParser::WHILE, 0);
}

tree::TerminalNode* SysYParser::StmtContext::BREAK() {
  return getToken(SysYParser::BREAK, 0);
}

tree::TerminalNode* SysYParser::StmtContext::CONTINUE() {
  return getToken(SysYParser::CONTINUE, 0);
}

tree::TerminalNode* SysYParser::StmtContext::RETURN() {
  return getToken(SysYParser::RETURN, 0);
}


size_t SysYParser::StmtContext::getRuleIndex() const {
  return SysYParser::RuleStmt;
}


std::any SysYParser::StmtContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitStmt(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::StmtContext* SysYParser::stmt() {
  StmtContext *_localctx = _tracker.createInstance<StmtContext>(_ctx, getState());
  enterRule(_localctx, 28, SysYParser::RuleStmt);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    setState(234);
    _errHandler->sync(this);
    switch (getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 23, _ctx)) {
    case 1: {
      enterOuterAlt(_localctx, 1);
      setState(200);
      lVal();
      setState(201);
      match(SysYParser::ASSIGN);
      setState(202);
      exp();
      setState(203);
      match(SysYParser::SEMI);
      break;
    }

    case 2: {
      enterOuterAlt(_localctx, 2);
      setState(206);
      _errHandler->sync(this);

      _la = _input->LA(1);
      if ((((_la & ~ 0x3fULL) == 0) &&
        ((1ULL << _la) & 25811749888) != 0)) {
        setState(205);
        exp();
      }
      setState(208);
      match(SysYParser::SEMI);
      break;
    }

    case 3: {
      enterOuterAlt(_localctx, 3);
      setState(209);
      block();
      break;
    }

    case 4: {
      enterOuterAlt(_localctx, 4);
      setState(210);
      match(SysYParser::IF);
      setState(211);
      match(SysYParser::LPAREN);
      setState(212);
      cond();
      setState(213);
      match(SysYParser::RPAREN);
      setState(214);
      stmt();
      setState(217);
      _errHandler->sync(this);

      switch (getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 21, _ctx)) {
      case 1: {
        setState(215);
        match(SysYParser::ELSE);
        setState(216);
        stmt();
        break;
      }

      default:
        break;
      }
      break;
    }

    case 5: {
      enterOuterAlt(_localctx, 5);
      setState(219);
      match(SysYParser::WHILE);
      setState(220);
      match(SysYParser::LPAREN);
      setState(221);
      cond();
      setState(222);
      match(SysYParser::RPAREN);
      setState(223);
      stmt();
      break;
    }

    case 6: {
      enterOuterAlt(_localctx, 6);
      setState(225);
      match(SysYParser::BREAK);
      setState(226);
      match(SysYParser::SEMI);
      break;
    }

    case 7: {
      enterOuterAlt(_localctx, 7);
      setState(227);
      match(SysYParser::CONTINUE);
      setState(228);
      match(SysYParser::SEMI);
      break;
    }

    case 8: {
      enterOuterAlt(_localctx, 8);
      setState(229);
      match(SysYParser::RETURN);
      setState(231);
      _errHandler->sync(this);

      _la = _input->LA(1);
      if ((((_la & ~ 0x3fULL) == 0) &&
        ((1ULL << _la) & 25811749888) != 0)) {
        setState(230);
        exp();
      }
      setState(233);
      match(SysYParser::SEMI);
      break;
    }

    default:
      break;
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- ExpContext ------------------------------------------------------------------

SysYParser::ExpContext::ExpContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

SysYParser::AddExpContext* SysYParser::ExpContext::addExp() {
  return getRuleContext<SysYParser::AddExpContext>(0);
}


size_t SysYParser::ExpContext::getRuleIndex() const {
  return SysYParser::RuleExp;
}


std::any SysYParser::ExpContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitExp(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::ExpContext* SysYParser::exp() {
  ExpContext *_localctx = _tracker.createInstance<ExpContext>(_ctx, getState());
  enterRule(_localctx, 30, SysYParser::RuleExp);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(236);
    addExp();
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- CondContext ------------------------------------------------------------------

SysYParser::CondContext::CondContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

SysYParser::LorExpContext* SysYParser::CondContext::lorExp() {
  return getRuleContext<SysYParser::LorExpContext>(0);
}


size_t SysYParser::CondContext::getRuleIndex() const {
  return SysYParser::RuleCond;
}


std::any SysYParser::CondContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitCond(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::CondContext* SysYParser::cond() {
  CondContext *_localctx = _tracker.createInstance<CondContext>(_ctx, getState());
  enterRule(_localctx, 32, SysYParser::RuleCond);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(238);
    lorExp();
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- LValContext ------------------------------------------------------------------

SysYParser::LValContext::LValContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* SysYParser::LValContext::IDENT() {
  return getToken(SysYParser::IDENT, 0);
}

std::vector<tree::TerminalNode *> SysYParser::LValContext::LBRACK() {
  return getTokens(SysYParser::LBRACK);
}

tree::TerminalNode* SysYParser::LValContext::LBRACK(size_t i) {
  return getToken(SysYParser::LBRACK, i);
}

std::vector<SysYParser::ExpContext *> SysYParser::LValContext::exp() {
  return getRuleContexts<SysYParser::ExpContext>();
}

SysYParser::ExpContext* SysYParser::LValContext::exp(size_t i) {
  return getRuleContext<SysYParser::ExpContext>(i);
}

std::vector<tree::TerminalNode *> SysYParser::LValContext::RBRACK() {
  return getTokens(SysYParser::RBRACK);
}

tree::TerminalNode* SysYParser::LValContext::RBRACK(size_t i) {
  return getToken(SysYParser::RBRACK, i);
}


size_t SysYParser::LValContext::getRuleIndex() const {
  return SysYParser::RuleLVal;
}


std::any SysYParser::LValContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitLVal(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::LValContext* SysYParser::lVal() {
  LValContext *_localctx = _tracker.createInstance<LValContext>(_ctx, getState());
  enterRule(_localctx, 34, SysYParser::RuleLVal);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(240);
    match(SysYParser::IDENT);
    setState(247);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while (_la == SysYParser::LBRACK) {
      setState(241);
      match(SysYParser::LBRACK);
      setState(242);
      exp();
      setState(243);
      match(SysYParser::RBRACK);
      setState(249);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- PrimaryExpContext ------------------------------------------------------------------

SysYParser::PrimaryExpContext::PrimaryExpContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* SysYParser::PrimaryExpContext::LPAREN() {
  return getToken(SysYParser::LPAREN, 0);
}

SysYParser::ExpContext* SysYParser::PrimaryExpContext::exp() {
  return getRuleContext<SysYParser::ExpContext>(0);
}

tree::TerminalNode* SysYParser::PrimaryExpContext::RPAREN() {
  return getToken(SysYParser::RPAREN, 0);
}

SysYParser::LValContext* SysYParser::PrimaryExpContext::lVal() {
  return getRuleContext<SysYParser::LValContext>(0);
}

SysYParser::NumberContext* SysYParser::PrimaryExpContext::number() {
  return getRuleContext<SysYParser::NumberContext>(0);
}


size_t SysYParser::PrimaryExpContext::getRuleIndex() const {
  return SysYParser::RulePrimaryExp;
}


std::any SysYParser::PrimaryExpContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitPrimaryExp(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::PrimaryExpContext* SysYParser::primaryExp() {
  PrimaryExpContext *_localctx = _tracker.createInstance<PrimaryExpContext>(_ctx, getState());
  enterRule(_localctx, 36, SysYParser::RulePrimaryExp);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    setState(256);
    _errHandler->sync(this);
    switch (_input->LA(1)) {
      case SysYParser::LPAREN: {
        enterOuterAlt(_localctx, 1);
        setState(250);
        match(SysYParser::LPAREN);
        setState(251);
        exp();
        setState(252);
        match(SysYParser::RPAREN);
        break;
      }

      case SysYParser::IDENT: {
        enterOuterAlt(_localctx, 2);
        setState(254);
        lVal();
        break;
      }

      case SysYParser::INT_CONST: {
        enterOuterAlt(_localctx, 3);
        setState(255);
        number();
        break;
      }

    default:
      throw NoViableAltException(this);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- NumberContext ------------------------------------------------------------------

SysYParser::NumberContext::NumberContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* SysYParser::NumberContext::INT_CONST() {
  return getToken(SysYParser::INT_CONST, 0);
}


size_t SysYParser::NumberContext::getRuleIndex() const {
  return SysYParser::RuleNumber;
}


std::any SysYParser::NumberContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitNumber(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::NumberContext* SysYParser::number() {
  NumberContext *_localctx = _tracker.createInstance<NumberContext>(_ctx, getState());
  enterRule(_localctx, 38, SysYParser::RuleNumber);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(258);
    match(SysYParser::INT_CONST);
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- UnaryExpContext ------------------------------------------------------------------

SysYParser::UnaryExpContext::UnaryExpContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* SysYParser::UnaryExpContext::IDENT() {
  return getToken(SysYParser::IDENT, 0);
}

tree::TerminalNode* SysYParser::UnaryExpContext::LPAREN() {
  return getToken(SysYParser::LPAREN, 0);
}

tree::TerminalNode* SysYParser::UnaryExpContext::RPAREN() {
  return getToken(SysYParser::RPAREN, 0);
}

SysYParser::FuncRParamsContext* SysYParser::UnaryExpContext::funcRParams() {
  return getRuleContext<SysYParser::FuncRParamsContext>(0);
}

SysYParser::PrimaryExpContext* SysYParser::UnaryExpContext::primaryExp() {
  return getRuleContext<SysYParser::PrimaryExpContext>(0);
}

SysYParser::UnaryOpContext* SysYParser::UnaryExpContext::unaryOp() {
  return getRuleContext<SysYParser::UnaryOpContext>(0);
}

SysYParser::UnaryExpContext* SysYParser::UnaryExpContext::unaryExp() {
  return getRuleContext<SysYParser::UnaryExpContext>(0);
}


size_t SysYParser::UnaryExpContext::getRuleIndex() const {
  return SysYParser::RuleUnaryExp;
}


std::any SysYParser::UnaryExpContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitUnaryExp(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::UnaryExpContext* SysYParser::unaryExp() {
  UnaryExpContext *_localctx = _tracker.createInstance<UnaryExpContext>(_ctx, getState());
  enterRule(_localctx, 40, SysYParser::RuleUnaryExp);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    setState(270);
    _errHandler->sync(this);
    switch (getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 27, _ctx)) {
    case 1: {
      enterOuterAlt(_localctx, 1);
      setState(260);
      match(SysYParser::IDENT);
      setState(261);
      match(SysYParser::LPAREN);
      setState(263);
      _errHandler->sync(this);

      _la = _input->LA(1);
      if ((((_la & ~ 0x3fULL) == 0) &&
        ((1ULL << _la) & 25811749888) != 0)) {
        setState(262);
        funcRParams();
      }
      setState(265);
      match(SysYParser::RPAREN);
      break;
    }

    case 2: {
      enterOuterAlt(_localctx, 2);
      setState(266);
      primaryExp();
      break;
    }

    case 3: {
      enterOuterAlt(_localctx, 3);
      setState(267);
      unaryOp();
      setState(268);
      unaryExp();
      break;
    }

    default:
      break;
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- UnaryOpContext ------------------------------------------------------------------

SysYParser::UnaryOpContext::UnaryOpContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* SysYParser::UnaryOpContext::ADD() {
  return getToken(SysYParser::ADD, 0);
}

tree::TerminalNode* SysYParser::UnaryOpContext::SUB() {
  return getToken(SysYParser::SUB, 0);
}

tree::TerminalNode* SysYParser::UnaryOpContext::NOT() {
  return getToken(SysYParser::NOT, 0);
}


size_t SysYParser::UnaryOpContext::getRuleIndex() const {
  return SysYParser::RuleUnaryOp;
}


std::any SysYParser::UnaryOpContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitUnaryOp(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::UnaryOpContext* SysYParser::unaryOp() {
  UnaryOpContext *_localctx = _tracker.createInstance<UnaryOpContext>(_ctx, getState());
  enterRule(_localctx, 42, SysYParser::RuleUnaryOp);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(272);
    _la = _input->LA(1);
    if (!((((_la & ~ 0x3fULL) == 0) &&
      ((1ULL << _la) & 8391680) != 0))) {
    _errHandler->recoverInline(this);
    }
    else {
      _errHandler->reportMatch(this);
      consume();
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- FuncRParamsContext ------------------------------------------------------------------

SysYParser::FuncRParamsContext::FuncRParamsContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

std::vector<SysYParser::ExpContext *> SysYParser::FuncRParamsContext::exp() {
  return getRuleContexts<SysYParser::ExpContext>();
}

SysYParser::ExpContext* SysYParser::FuncRParamsContext::exp(size_t i) {
  return getRuleContext<SysYParser::ExpContext>(i);
}

std::vector<tree::TerminalNode *> SysYParser::FuncRParamsContext::COMMA() {
  return getTokens(SysYParser::COMMA);
}

tree::TerminalNode* SysYParser::FuncRParamsContext::COMMA(size_t i) {
  return getToken(SysYParser::COMMA, i);
}


size_t SysYParser::FuncRParamsContext::getRuleIndex() const {
  return SysYParser::RuleFuncRParams;
}


std::any SysYParser::FuncRParamsContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitFuncRParams(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::FuncRParamsContext* SysYParser::funcRParams() {
  FuncRParamsContext *_localctx = _tracker.createInstance<FuncRParamsContext>(_ctx, getState());
  enterRule(_localctx, 44, SysYParser::RuleFuncRParams);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(274);
    exp();
    setState(279);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while (_la == SysYParser::COMMA) {
      setState(275);
      match(SysYParser::COMMA);
      setState(276);
      exp();
      setState(281);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- MulExpContext ------------------------------------------------------------------

SysYParser::MulExpContext::MulExpContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

std::vector<SysYParser::UnaryExpContext *> SysYParser::MulExpContext::unaryExp() {
  return getRuleContexts<SysYParser::UnaryExpContext>();
}

SysYParser::UnaryExpContext* SysYParser::MulExpContext::unaryExp(size_t i) {
  return getRuleContext<SysYParser::UnaryExpContext>(i);
}

std::vector<tree::TerminalNode *> SysYParser::MulExpContext::MUL() {
  return getTokens(SysYParser::MUL);
}

tree::TerminalNode* SysYParser::MulExpContext::MUL(size_t i) {
  return getToken(SysYParser::MUL, i);
}

std::vector<tree::TerminalNode *> SysYParser::MulExpContext::DIV() {
  return getTokens(SysYParser::DIV);
}

tree::TerminalNode* SysYParser::MulExpContext::DIV(size_t i) {
  return getToken(SysYParser::DIV, i);
}

std::vector<tree::TerminalNode *> SysYParser::MulExpContext::MOD() {
  return getTokens(SysYParser::MOD);
}

tree::TerminalNode* SysYParser::MulExpContext::MOD(size_t i) {
  return getToken(SysYParser::MOD, i);
}


size_t SysYParser::MulExpContext::getRuleIndex() const {
  return SysYParser::RuleMulExp;
}


std::any SysYParser::MulExpContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitMulExp(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::MulExpContext* SysYParser::mulExp() {
  MulExpContext *_localctx = _tracker.createInstance<MulExpContext>(_ctx, getState());
  enterRule(_localctx, 46, SysYParser::RuleMulExp);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(282);
    unaryExp();
    setState(287);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while ((((_la & ~ 0x3fULL) == 0) &&
      ((1ULL << _la) & 28672) != 0)) {
      setState(283);
      _la = _input->LA(1);
      if (!((((_la & ~ 0x3fULL) == 0) &&
        ((1ULL << _la) & 28672) != 0))) {
      _errHandler->recoverInline(this);
      }
      else {
        _errHandler->reportMatch(this);
        consume();
      }
      setState(284);
      unaryExp();
      setState(289);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- AddExpContext ------------------------------------------------------------------

SysYParser::AddExpContext::AddExpContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

std::vector<SysYParser::MulExpContext *> SysYParser::AddExpContext::mulExp() {
  return getRuleContexts<SysYParser::MulExpContext>();
}

SysYParser::MulExpContext* SysYParser::AddExpContext::mulExp(size_t i) {
  return getRuleContext<SysYParser::MulExpContext>(i);
}

std::vector<tree::TerminalNode *> SysYParser::AddExpContext::ADD() {
  return getTokens(SysYParser::ADD);
}

tree::TerminalNode* SysYParser::AddExpContext::ADD(size_t i) {
  return getToken(SysYParser::ADD, i);
}

std::vector<tree::TerminalNode *> SysYParser::AddExpContext::SUB() {
  return getTokens(SysYParser::SUB);
}

tree::TerminalNode* SysYParser::AddExpContext::SUB(size_t i) {
  return getToken(SysYParser::SUB, i);
}


size_t SysYParser::AddExpContext::getRuleIndex() const {
  return SysYParser::RuleAddExp;
}


std::any SysYParser::AddExpContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitAddExp(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::AddExpContext* SysYParser::addExp() {
  AddExpContext *_localctx = _tracker.createInstance<AddExpContext>(_ctx, getState());
  enterRule(_localctx, 48, SysYParser::RuleAddExp);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(290);
    mulExp();
    setState(295);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while (_la == SysYParser::ADD

    || _la == SysYParser::SUB) {
      setState(291);
      _la = _input->LA(1);
      if (!(_la == SysYParser::ADD

      || _la == SysYParser::SUB)) {
      _errHandler->recoverInline(this);
      }
      else {
        _errHandler->reportMatch(this);
        consume();
      }
      setState(292);
      mulExp();
      setState(297);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- RelExpContext ------------------------------------------------------------------

SysYParser::RelExpContext::RelExpContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

std::vector<SysYParser::AddExpContext *> SysYParser::RelExpContext::addExp() {
  return getRuleContexts<SysYParser::AddExpContext>();
}

SysYParser::AddExpContext* SysYParser::RelExpContext::addExp(size_t i) {
  return getRuleContext<SysYParser::AddExpContext>(i);
}

std::vector<tree::TerminalNode *> SysYParser::RelExpContext::LT() {
  return getTokens(SysYParser::LT);
}

tree::TerminalNode* SysYParser::RelExpContext::LT(size_t i) {
  return getToken(SysYParser::LT, i);
}

std::vector<tree::TerminalNode *> SysYParser::RelExpContext::GT() {
  return getTokens(SysYParser::GT);
}

tree::TerminalNode* SysYParser::RelExpContext::GT(size_t i) {
  return getToken(SysYParser::GT, i);
}

std::vector<tree::TerminalNode *> SysYParser::RelExpContext::LE() {
  return getTokens(SysYParser::LE);
}

tree::TerminalNode* SysYParser::RelExpContext::LE(size_t i) {
  return getToken(SysYParser::LE, i);
}

std::vector<tree::TerminalNode *> SysYParser::RelExpContext::GE() {
  return getTokens(SysYParser::GE);
}

tree::TerminalNode* SysYParser::RelExpContext::GE(size_t i) {
  return getToken(SysYParser::GE, i);
}


size_t SysYParser::RelExpContext::getRuleIndex() const {
  return SysYParser::RuleRelExp;
}


std::any SysYParser::RelExpContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitRelExp(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::RelExpContext* SysYParser::relExp() {
  RelExpContext *_localctx = _tracker.createInstance<RelExpContext>(_ctx, getState());
  enterRule(_localctx, 50, SysYParser::RuleRelExp);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(298);
    addExp();
    setState(303);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while ((((_la & ~ 0x3fULL) == 0) &&
      ((1ULL << _la) & 1966080) != 0)) {
      setState(299);
      _la = _input->LA(1);
      if (!((((_la & ~ 0x3fULL) == 0) &&
        ((1ULL << _la) & 1966080) != 0))) {
      _errHandler->recoverInline(this);
      }
      else {
        _errHandler->reportMatch(this);
        consume();
      }
      setState(300);
      addExp();
      setState(305);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- EqExpContext ------------------------------------------------------------------

SysYParser::EqExpContext::EqExpContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

std::vector<SysYParser::RelExpContext *> SysYParser::EqExpContext::relExp() {
  return getRuleContexts<SysYParser::RelExpContext>();
}

SysYParser::RelExpContext* SysYParser::EqExpContext::relExp(size_t i) {
  return getRuleContext<SysYParser::RelExpContext>(i);
}

std::vector<tree::TerminalNode *> SysYParser::EqExpContext::EQ() {
  return getTokens(SysYParser::EQ);
}

tree::TerminalNode* SysYParser::EqExpContext::EQ(size_t i) {
  return getToken(SysYParser::EQ, i);
}

std::vector<tree::TerminalNode *> SysYParser::EqExpContext::NEQ() {
  return getTokens(SysYParser::NEQ);
}

tree::TerminalNode* SysYParser::EqExpContext::NEQ(size_t i) {
  return getToken(SysYParser::NEQ, i);
}


size_t SysYParser::EqExpContext::getRuleIndex() const {
  return SysYParser::RuleEqExp;
}


std::any SysYParser::EqExpContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitEqExp(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::EqExpContext* SysYParser::eqExp() {
  EqExpContext *_localctx = _tracker.createInstance<EqExpContext>(_ctx, getState());
  enterRule(_localctx, 52, SysYParser::RuleEqExp);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(306);
    relExp();
    setState(311);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while (_la == SysYParser::EQ

    || _la == SysYParser::NEQ) {
      setState(307);
      _la = _input->LA(1);
      if (!(_la == SysYParser::EQ

      || _la == SysYParser::NEQ)) {
      _errHandler->recoverInline(this);
      }
      else {
        _errHandler->reportMatch(this);
        consume();
      }
      setState(308);
      relExp();
      setState(313);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- LandExpContext ------------------------------------------------------------------

SysYParser::LandExpContext::LandExpContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

std::vector<SysYParser::EqExpContext *> SysYParser::LandExpContext::eqExp() {
  return getRuleContexts<SysYParser::EqExpContext>();
}

SysYParser::EqExpContext* SysYParser::LandExpContext::eqExp(size_t i) {
  return getRuleContext<SysYParser::EqExpContext>(i);
}

std::vector<tree::TerminalNode *> SysYParser::LandExpContext::AND() {
  return getTokens(SysYParser::AND);
}

tree::TerminalNode* SysYParser::LandExpContext::AND(size_t i) {
  return getToken(SysYParser::AND, i);
}


size_t SysYParser::LandExpContext::getRuleIndex() const {
  return SysYParser::RuleLandExp;
}


std::any SysYParser::LandExpContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitLandExp(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::LandExpContext* SysYParser::landExp() {
  LandExpContext *_localctx = _tracker.createInstance<LandExpContext>(_ctx, getState());
  enterRule(_localctx, 54, SysYParser::RuleLandExp);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(314);
    eqExp();
    setState(319);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while (_la == SysYParser::AND) {
      setState(315);
      match(SysYParser::AND);
      setState(316);
      eqExp();
      setState(321);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- LorExpContext ------------------------------------------------------------------

SysYParser::LorExpContext::LorExpContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

std::vector<SysYParser::LandExpContext *> SysYParser::LorExpContext::landExp() {
  return getRuleContexts<SysYParser::LandExpContext>();
}

SysYParser::LandExpContext* SysYParser::LorExpContext::landExp(size_t i) {
  return getRuleContext<SysYParser::LandExpContext>(i);
}

std::vector<tree::TerminalNode *> SysYParser::LorExpContext::OR() {
  return getTokens(SysYParser::OR);
}

tree::TerminalNode* SysYParser::LorExpContext::OR(size_t i) {
  return getToken(SysYParser::OR, i);
}


size_t SysYParser::LorExpContext::getRuleIndex() const {
  return SysYParser::RuleLorExp;
}


std::any SysYParser::LorExpContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitLorExp(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::LorExpContext* SysYParser::lorExp() {
  LorExpContext *_localctx = _tracker.createInstance<LorExpContext>(_ctx, getState());
  enterRule(_localctx, 56, SysYParser::RuleLorExp);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(322);
    landExp();
    setState(327);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while (_la == SysYParser::OR) {
      setState(323);
      match(SysYParser::OR);
      setState(324);
      landExp();
      setState(329);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- ConstExpContext ------------------------------------------------------------------

SysYParser::ConstExpContext::ConstExpContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

SysYParser::AddExpContext* SysYParser::ConstExpContext::addExp() {
  return getRuleContext<SysYParser::AddExpContext>(0);
}


size_t SysYParser::ConstExpContext::getRuleIndex() const {
  return SysYParser::RuleConstExp;
}


std::any SysYParser::ConstExpContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitConstExp(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::ConstExpContext* SysYParser::constExp() {
  ConstExpContext *_localctx = _tracker.createInstance<ConstExpContext>(_ctx, getState());
  enterRule(_localctx, 58, SysYParser::RuleConstExp);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(330);
    addExp();
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

void SysYParser::initialize() {
#if ANTLR4_USE_THREAD_LOCAL_CACHE
  sysyparserParserInitialize();
#else
  ::antlr4::internal::call_once(sysyparserParserOnceFlag, sysyparserParserInitialize);
#endif
}
