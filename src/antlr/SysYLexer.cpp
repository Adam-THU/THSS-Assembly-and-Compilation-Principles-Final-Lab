
// Generated from SysYLexer.g4 by ANTLR 4.13.1


#include "SysYLexer.h"


using namespace antlr4;



using namespace antlr4;

namespace {

struct SysYLexerStaticData final {
  SysYLexerStaticData(std::vector<std::string> ruleNames,
                          std::vector<std::string> channelNames,
                          std::vector<std::string> modeNames,
                          std::vector<std::string> literalNames,
                          std::vector<std::string> symbolicNames)
      : ruleNames(std::move(ruleNames)), channelNames(std::move(channelNames)),
        modeNames(std::move(modeNames)), literalNames(std::move(literalNames)),
        symbolicNames(std::move(symbolicNames)),
        vocabulary(this->literalNames, this->symbolicNames) {}

  SysYLexerStaticData(const SysYLexerStaticData&) = delete;
  SysYLexerStaticData(SysYLexerStaticData&&) = delete;
  SysYLexerStaticData& operator=(const SysYLexerStaticData&) = delete;
  SysYLexerStaticData& operator=(SysYLexerStaticData&&) = delete;

  std::vector<antlr4::dfa::DFA> decisionToDFA;
  antlr4::atn::PredictionContextCache sharedContextCache;
  const std::vector<std::string> ruleNames;
  const std::vector<std::string> channelNames;
  const std::vector<std::string> modeNames;
  const std::vector<std::string> literalNames;
  const std::vector<std::string> symbolicNames;
  const antlr4::dfa::Vocabulary vocabulary;
  antlr4::atn::SerializedATNView serializedATN;
  std::unique_ptr<antlr4::atn::ATN> atn;
};

::antlr4::internal::OnceFlag sysylexerLexerOnceFlag;
#if ANTLR4_USE_THREAD_LOCAL_CACHE
static thread_local
#endif
SysYLexerStaticData *sysylexerLexerStaticData = nullptr;

void sysylexerLexerInitialize() {
#if ANTLR4_USE_THREAD_LOCAL_CACHE
  if (sysylexerLexerStaticData != nullptr) {
    return;
  }
#else
  assert(sysylexerLexerStaticData == nullptr);
#endif
  auto staticData = std::make_unique<SysYLexerStaticData>(
    std::vector<std::string>{
      "CONST", "INT", "VOID", "IF", "ELSE", "WHILE", "BREAK", "CONTINUE", 
      "RETURN", "ADD", "SUB", "MUL", "DIV", "MOD", "EQ", "NEQ", "LT", "LE", 
      "GT", "GE", "AND", "OR", "NOT", "ASSIGN", "LPAREN", "RPAREN", "LBRACK", 
      "RBRACK", "LBRACE", "RBRACE", "COMMA", "SEMI", "IDENT", "IDENT_START", 
      "IDENT_CHAR", "INT_CONST", "DECIMAL_CONST", "OCTAL_CONST", "HEX_CONST", 
      "DIGIT", "NONZERO_DIGIT", "OCTAL_DIGIT", "HEX_PREFIX", "HEX_DIGIT", 
      "LINE_COMMENT", "BLOCK_COMMENT", "WS"
    },
    std::vector<std::string>{
      "DEFAULT_TOKEN_CHANNEL", "HIDDEN"
    },
    std::vector<std::string>{
      "DEFAULT_MODE"
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
  	4,0,37,277,6,-1,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,
  	6,2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,14,
  	7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,2,21,
  	7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,27,7,27,2,28,
  	7,28,2,29,7,29,2,30,7,30,2,31,7,31,2,32,7,32,2,33,7,33,2,34,7,34,2,35,
  	7,35,2,36,7,36,2,37,7,37,2,38,7,38,2,39,7,39,2,40,7,40,2,41,7,41,2,42,
  	7,42,2,43,7,43,2,44,7,44,2,45,7,45,2,46,7,46,1,0,1,0,1,0,1,0,1,0,1,0,
  	1,1,1,1,1,1,1,1,1,2,1,2,1,2,1,2,1,2,1,3,1,3,1,3,1,4,1,4,1,4,1,4,1,4,1,
  	5,1,5,1,5,1,5,1,5,1,5,1,6,1,6,1,6,1,6,1,6,1,6,1,7,1,7,1,7,1,7,1,7,1,7,
  	1,7,1,7,1,7,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,9,1,9,1,10,1,10,1,11,1,11,1,
  	12,1,12,1,13,1,13,1,14,1,14,1,14,1,15,1,15,1,15,1,16,1,16,1,17,1,17,1,
  	17,1,18,1,18,1,19,1,19,1,19,1,20,1,20,1,20,1,21,1,21,1,21,1,22,1,22,1,
  	23,1,23,1,24,1,24,1,25,1,25,1,26,1,26,1,27,1,27,1,28,1,28,1,29,1,29,1,
  	30,1,30,1,31,1,31,1,32,1,32,5,32,201,8,32,10,32,12,32,204,9,32,1,33,1,
  	33,1,34,1,34,1,35,1,35,1,35,3,35,213,8,35,1,36,1,36,5,36,217,8,36,10,
  	36,12,36,220,9,36,1,37,1,37,5,37,224,8,37,10,37,12,37,227,9,37,1,38,1,
  	38,4,38,231,8,38,11,38,12,38,232,1,39,1,39,1,40,1,40,1,41,1,41,1,42,1,
  	42,1,42,1,43,1,43,1,44,1,44,1,44,1,44,5,44,250,8,44,10,44,12,44,253,9,
  	44,1,44,1,44,1,45,1,45,1,45,1,45,5,45,261,8,45,10,45,12,45,264,9,45,1,
  	45,1,45,1,45,1,45,1,45,1,46,4,46,272,8,46,11,46,12,46,273,1,46,1,46,1,
  	262,0,47,1,1,3,2,5,3,7,4,9,5,11,6,13,7,15,8,17,9,19,10,21,11,23,12,25,
  	13,27,14,29,15,31,16,33,17,35,18,37,19,39,20,41,21,43,22,45,23,47,24,
  	49,25,51,26,53,27,55,28,57,29,59,30,61,31,63,32,65,33,67,0,69,0,71,34,
  	73,0,75,0,77,0,79,0,81,0,83,0,85,0,87,0,89,35,91,36,93,37,1,0,9,3,0,65,
  	90,95,95,97,122,4,0,48,57,65,90,95,95,97,122,1,0,48,57,1,0,49,57,1,0,
  	48,55,2,0,88,88,120,120,3,0,48,57,65,70,97,102,2,0,10,10,13,13,3,0,9,
  	10,13,13,32,32,275,0,1,1,0,0,0,0,3,1,0,0,0,0,5,1,0,0,0,0,7,1,0,0,0,0,
  	9,1,0,0,0,0,11,1,0,0,0,0,13,1,0,0,0,0,15,1,0,0,0,0,17,1,0,0,0,0,19,1,
  	0,0,0,0,21,1,0,0,0,0,23,1,0,0,0,0,25,1,0,0,0,0,27,1,0,0,0,0,29,1,0,0,
  	0,0,31,1,0,0,0,0,33,1,0,0,0,0,35,1,0,0,0,0,37,1,0,0,0,0,39,1,0,0,0,0,
  	41,1,0,0,0,0,43,1,0,0,0,0,45,1,0,0,0,0,47,1,0,0,0,0,49,1,0,0,0,0,51,1,
  	0,0,0,0,53,1,0,0,0,0,55,1,0,0,0,0,57,1,0,0,0,0,59,1,0,0,0,0,61,1,0,0,
  	0,0,63,1,0,0,0,0,65,1,0,0,0,0,71,1,0,0,0,0,89,1,0,0,0,0,91,1,0,0,0,0,
  	93,1,0,0,0,1,95,1,0,0,0,3,101,1,0,0,0,5,105,1,0,0,0,7,110,1,0,0,0,9,113,
  	1,0,0,0,11,118,1,0,0,0,13,124,1,0,0,0,15,130,1,0,0,0,17,139,1,0,0,0,19,
  	146,1,0,0,0,21,148,1,0,0,0,23,150,1,0,0,0,25,152,1,0,0,0,27,154,1,0,0,
  	0,29,156,1,0,0,0,31,159,1,0,0,0,33,162,1,0,0,0,35,164,1,0,0,0,37,167,
  	1,0,0,0,39,169,1,0,0,0,41,172,1,0,0,0,43,175,1,0,0,0,45,178,1,0,0,0,47,
  	180,1,0,0,0,49,182,1,0,0,0,51,184,1,0,0,0,53,186,1,0,0,0,55,188,1,0,0,
  	0,57,190,1,0,0,0,59,192,1,0,0,0,61,194,1,0,0,0,63,196,1,0,0,0,65,198,
  	1,0,0,0,67,205,1,0,0,0,69,207,1,0,0,0,71,212,1,0,0,0,73,214,1,0,0,0,75,
  	221,1,0,0,0,77,228,1,0,0,0,79,234,1,0,0,0,81,236,1,0,0,0,83,238,1,0,0,
  	0,85,240,1,0,0,0,87,243,1,0,0,0,89,245,1,0,0,0,91,256,1,0,0,0,93,271,
  	1,0,0,0,95,96,5,99,0,0,96,97,5,111,0,0,97,98,5,110,0,0,98,99,5,115,0,
  	0,99,100,5,116,0,0,100,2,1,0,0,0,101,102,5,105,0,0,102,103,5,110,0,0,
  	103,104,5,116,0,0,104,4,1,0,0,0,105,106,5,118,0,0,106,107,5,111,0,0,107,
  	108,5,105,0,0,108,109,5,100,0,0,109,6,1,0,0,0,110,111,5,105,0,0,111,112,
  	5,102,0,0,112,8,1,0,0,0,113,114,5,101,0,0,114,115,5,108,0,0,115,116,5,
  	115,0,0,116,117,5,101,0,0,117,10,1,0,0,0,118,119,5,119,0,0,119,120,5,
  	104,0,0,120,121,5,105,0,0,121,122,5,108,0,0,122,123,5,101,0,0,123,12,
  	1,0,0,0,124,125,5,98,0,0,125,126,5,114,0,0,126,127,5,101,0,0,127,128,
  	5,97,0,0,128,129,5,107,0,0,129,14,1,0,0,0,130,131,5,99,0,0,131,132,5,
  	111,0,0,132,133,5,110,0,0,133,134,5,116,0,0,134,135,5,105,0,0,135,136,
  	5,110,0,0,136,137,5,117,0,0,137,138,5,101,0,0,138,16,1,0,0,0,139,140,
  	5,114,0,0,140,141,5,101,0,0,141,142,5,116,0,0,142,143,5,117,0,0,143,144,
  	5,114,0,0,144,145,5,110,0,0,145,18,1,0,0,0,146,147,5,43,0,0,147,20,1,
  	0,0,0,148,149,5,45,0,0,149,22,1,0,0,0,150,151,5,42,0,0,151,24,1,0,0,0,
  	152,153,5,47,0,0,153,26,1,0,0,0,154,155,5,37,0,0,155,28,1,0,0,0,156,157,
  	5,61,0,0,157,158,5,61,0,0,158,30,1,0,0,0,159,160,5,33,0,0,160,161,5,61,
  	0,0,161,32,1,0,0,0,162,163,5,60,0,0,163,34,1,0,0,0,164,165,5,60,0,0,165,
  	166,5,61,0,0,166,36,1,0,0,0,167,168,5,62,0,0,168,38,1,0,0,0,169,170,5,
  	62,0,0,170,171,5,61,0,0,171,40,1,0,0,0,172,173,5,38,0,0,173,174,5,38,
  	0,0,174,42,1,0,0,0,175,176,5,124,0,0,176,177,5,124,0,0,177,44,1,0,0,0,
  	178,179,5,33,0,0,179,46,1,0,0,0,180,181,5,61,0,0,181,48,1,0,0,0,182,183,
  	5,40,0,0,183,50,1,0,0,0,184,185,5,41,0,0,185,52,1,0,0,0,186,187,5,91,
  	0,0,187,54,1,0,0,0,188,189,5,93,0,0,189,56,1,0,0,0,190,191,5,123,0,0,
  	191,58,1,0,0,0,192,193,5,125,0,0,193,60,1,0,0,0,194,195,5,44,0,0,195,
  	62,1,0,0,0,196,197,5,59,0,0,197,64,1,0,0,0,198,202,3,67,33,0,199,201,
  	3,69,34,0,200,199,1,0,0,0,201,204,1,0,0,0,202,200,1,0,0,0,202,203,1,0,
  	0,0,203,66,1,0,0,0,204,202,1,0,0,0,205,206,7,0,0,0,206,68,1,0,0,0,207,
  	208,7,1,0,0,208,70,1,0,0,0,209,213,3,73,36,0,210,213,3,75,37,0,211,213,
  	3,77,38,0,212,209,1,0,0,0,212,210,1,0,0,0,212,211,1,0,0,0,213,72,1,0,
  	0,0,214,218,3,81,40,0,215,217,3,79,39,0,216,215,1,0,0,0,217,220,1,0,0,
  	0,218,216,1,0,0,0,218,219,1,0,0,0,219,74,1,0,0,0,220,218,1,0,0,0,221,
  	225,5,48,0,0,222,224,3,83,41,0,223,222,1,0,0,0,224,227,1,0,0,0,225,223,
  	1,0,0,0,225,226,1,0,0,0,226,76,1,0,0,0,227,225,1,0,0,0,228,230,3,85,42,
  	0,229,231,3,87,43,0,230,229,1,0,0,0,231,232,1,0,0,0,232,230,1,0,0,0,232,
  	233,1,0,0,0,233,78,1,0,0,0,234,235,7,2,0,0,235,80,1,0,0,0,236,237,7,3,
  	0,0,237,82,1,0,0,0,238,239,7,4,0,0,239,84,1,0,0,0,240,241,5,48,0,0,241,
  	242,7,5,0,0,242,86,1,0,0,0,243,244,7,6,0,0,244,88,1,0,0,0,245,246,5,47,
  	0,0,246,247,5,47,0,0,247,251,1,0,0,0,248,250,8,7,0,0,249,248,1,0,0,0,
  	250,253,1,0,0,0,251,249,1,0,0,0,251,252,1,0,0,0,252,254,1,0,0,0,253,251,
  	1,0,0,0,254,255,6,44,0,0,255,90,1,0,0,0,256,257,5,47,0,0,257,258,5,42,
  	0,0,258,262,1,0,0,0,259,261,9,0,0,0,260,259,1,0,0,0,261,264,1,0,0,0,262,
  	263,1,0,0,0,262,260,1,0,0,0,263,265,1,0,0,0,264,262,1,0,0,0,265,266,5,
  	42,0,0,266,267,5,47,0,0,267,268,1,0,0,0,268,269,6,45,0,0,269,92,1,0,0,
  	0,270,272,7,8,0,0,271,270,1,0,0,0,272,273,1,0,0,0,273,271,1,0,0,0,273,
  	274,1,0,0,0,274,275,1,0,0,0,275,276,6,46,0,0,276,94,1,0,0,0,9,0,202,212,
  	218,225,232,251,262,273,1,6,0,0
  };
  staticData->serializedATN = antlr4::atn::SerializedATNView(serializedATNSegment, sizeof(serializedATNSegment) / sizeof(serializedATNSegment[0]));

  antlr4::atn::ATNDeserializer deserializer;
  staticData->atn = deserializer.deserialize(staticData->serializedATN);

  const size_t count = staticData->atn->getNumberOfDecisions();
  staticData->decisionToDFA.reserve(count);
  for (size_t i = 0; i < count; i++) { 
    staticData->decisionToDFA.emplace_back(staticData->atn->getDecisionState(i), i);
  }
  sysylexerLexerStaticData = staticData.release();
}

}

SysYLexer::SysYLexer(CharStream *input) : Lexer(input) {
  SysYLexer::initialize();
  _interpreter = new atn::LexerATNSimulator(this, *sysylexerLexerStaticData->atn, sysylexerLexerStaticData->decisionToDFA, sysylexerLexerStaticData->sharedContextCache);
}

SysYLexer::~SysYLexer() {
  delete _interpreter;
}

std::string SysYLexer::getGrammarFileName() const {
  return "SysYLexer.g4";
}

const std::vector<std::string>& SysYLexer::getRuleNames() const {
  return sysylexerLexerStaticData->ruleNames;
}

const std::vector<std::string>& SysYLexer::getChannelNames() const {
  return sysylexerLexerStaticData->channelNames;
}

const std::vector<std::string>& SysYLexer::getModeNames() const {
  return sysylexerLexerStaticData->modeNames;
}

const dfa::Vocabulary& SysYLexer::getVocabulary() const {
  return sysylexerLexerStaticData->vocabulary;
}

antlr4::atn::SerializedATNView SysYLexer::getSerializedATN() const {
  return sysylexerLexerStaticData->serializedATN;
}

const atn::ATN& SysYLexer::getATN() const {
  return *sysylexerLexerStaticData->atn;
}




void SysYLexer::initialize() {
#if ANTLR4_USE_THREAD_LOCAL_CACHE
  sysylexerLexerInitialize();
#else
  ::antlr4::internal::call_once(sysylexerLexerOnceFlag, sysylexerLexerInitialize);
#endif
}
