# lextab.py. This file automatically created by PLY (version 3.10). Don't edit!
_tabversion   = '3.10'
_lextokens    = set(('EQ', 'CHAR', 'SWITCH', 'GT', 'FLOAT', 'RSHIFTEQUAL', 'PPPRAGMA', 'LPAREN', 'MINUSMINUS', 'STATIC', 'ELSE', 'OFFSETOF', 'LE', 'SEMI', 'XOR', 'CONTINUE', 'XOREQUAL', 'ARROW', 'DIVEQUAL', 'MINUS', 'PLUSEQUAL', 'AUTO', 'LNOT', 'LSHIFT', 'INT_CONST_CHAR', 'PPPRAGMASTR', 'LBRACKET', 'EQUALS', 'TYPEDEF', 'CASE', 'FLOAT_CONST', 'IF', 'RETURN', '__INT128', 'DIVIDE', 'GE', 'GOTO', 'PLUSPLUS', 'CHAR_CONST', 'TIMESEQUAL', 'INT_CONST_DEC', 'STRING_LITERAL', 'LBRACE', 'OREQUAL', '_COMPLEX', 'WCHAR_CONST', 'COMMA', 'ELLIPSIS', 'EXTERN', 'PLUS', 'PPHASH', 'CONST', 'RBRACKET', 'NE', 'VOID', 'WHILE', 'DEFAULT', 'UNION', 'FOR', 'SHORT', '_BOOL', 'SIGNED', 'HEX_FLOAT_CONST', 'LONG', 'INT_CONST_OCT', 'LT', 'AND', 'INT', 'INT_CONST_HEX', 'TIMES', 'MOD', 'MODEQUAL', 'LSHIFTEQUAL', 'ID', 'ENUM', 'BREAK', 'RBRACE', 'ANDEQUAL', 'CONDOP', 'INT_CONST_BIN', 'MINUSEQUAL', 'NOT', 'DO', 'STRUCT', 'LAND', 'UNSIGNED', 'TYPEID', 'VOLATILE', 'RPAREN', 'RSHIFT', 'WSTRING_LITERAL', 'INLINE', 'OR', 'RESTRICT', 'COLON', 'LOR', 'SIZEOF', 'REGISTER', 'DOUBLE', 'PERIOD'))
_lexreflags   = 64
_lexliterals  = ''
_lexstateinfo = {'INITIAL': 'inclusive', 'ppline': 'exclusive', 'pppragma': 'exclusive'}
_lexstatere   = {'INITIAL': [('(?P<t_PPHASH>[ \\t]*\\#)|(?P<t_NEWLINE>\\n+)|(?P<t_LBRACE>\\{)|(?P<t_RBRACE>\\})|(?P<t_FLOAT_CONST>((((([0-9]*\\.[0-9]+)|([0-9]+\\.))([eE][-+]?[0-9]+)?)|([0-9]+([eE][-+]?[0-9]+)))[FfLl]?))|(?P<t_HEX_FLOAT_CONST>(0[xX]([0-9a-fA-F]+|((([0-9a-fA-F]+)?\\.[0-9a-fA-F]+)|([0-9a-fA-F]+\\.)))([pP][+-]?[0-9]+)[FfLl]?))|(?P<t_INT_CONST_HEX>0[xX][0-9a-fA-F]+(([uU]ll)|([uU]LL)|(ll[uU]?)|(LL[uU]?)|([uU][lL])|([lL][uU]?)|[uU])?)|(?P<t_INT_CONST_BIN>0[bB][01]+(([uU]ll)|([uU]LL)|(ll[uU]?)|(LL[uU]?)|([uU][lL])|([lL][uU]?)|[uU])?)|(?P<t_BAD_CONST_OCT>0[0-7]*[89])|(?P<t_INT_CONST_OCT>0[0-7]*(([uU]ll)|([uU]LL)|(ll[uU]?)|(LL[uU]?)|([uU][lL])|([lL][uU]?)|[uU])?)|(?P<t_INT_CONST_DEC>(0(([uU]ll)|([uU]LL)|(ll[uU]?)|(LL[uU]?)|([uU][lL])|([lL][uU]?)|[uU])?)|([1-9][0-9]*(([uU]ll)|([uU]LL)|(ll[uU]?)|(LL[uU]?)|([uU][lL])|([lL][uU]?)|[uU])?))|(?P<t_INT_CONST_CHAR>\'([^\'\\\\\\n]|(\\\\(([a-wyzA-Z._~!=&\\^\\-\\\\?\'"]|x(?![0-9a-fA-F]))|(\\d+)(?!\\d)|(x[0-9a-fA-F]+)(?![0-9a-fA-F])))){2,4}\')|(?P<t_CHAR_CONST>\'([^\'\\\\\\n]|(\\\\(([a-wyzA-Z._~!=&\\^\\-\\\\?\'"]|x(?![0-9a-fA-F]))|(\\d+)(?!\\d)|(x[0-9a-fA-F]+)(?![0-9a-fA-F]))))\')|(?P<t_WCHAR_CONST>L\'([^\'\\\\\\n]|(\\\\(([a-wyzA-Z._~!=&\\^\\-\\\\?\'"]|x(?![0-9a-fA-F]))|(\\d+)(?!\\d)|(x[0-9a-fA-F]+)(?![0-9a-fA-F]))))\')|(?P<t_UNMATCHED_QUOTE>(\'([^\'\\\\\\n]|(\\\\(([a-wyzA-Z._~!=&\\^\\-\\\\?\'"]|x(?![0-9a-fA-F]))|(\\d+)(?!\\d)|(x[0-9a-fA-F]+)(?![0-9a-fA-F]))))*\\n)|(\'([^\'\\\\\\n]|(\\\\(([a-wyzA-Z._~!=&\\^\\-\\\\?\'"]|x(?![0-9a-fA-F]))|(\\d+)(?!\\d)|(x[0-9a-fA-F]+)(?![0-9a-fA-F]))))*$))|(?P<t_BAD_CHAR_CONST>(\'([^\'\\\\\\n]|(\\\\(([a-wyzA-Z._~!=&\\^\\-\\\\?\'"]|x(?![0-9a-fA-F]))|(\\d+)(?!\\d)|(x[0-9a-fA-F]+)(?![0-9a-fA-F]))))[^\'\n]+\')|(\'\')|(\'([\\\\][^a-zA-Z._~^!=&\\^\\-\\\\?\'"x0-9])[^\'\\n]*\'))|(?P<t_WSTRING_LITERAL>L"([^"\\\\\\n]|(\\\\[0-9a-zA-Z._~!=&\\^\\-\\\\?\'"]))*")|(?P<t_BAD_STRING_LITERAL>"([^"\\\\\\n]|(\\\\[0-9a-zA-Z._~!=&\\^\\-\\\\?\'"]))*([\\\\][^a-zA-Z._~^!=&\\^\\-\\\\?\'"x0-9])([^"\\\\\\n]|(\\\\[0-9a-zA-Z._~!=&\\^\\-\\\\?\'"]))*")|(?P<t_ID>[a-zA-Z_$][0-9a-zA-Z_$]*)|(?P<t_STRING_LITERAL>"([^"\\\\\\n]|(\\\\[0-9a-zA-Z._~!=&\\^\\-\\\\?\'"]))*")|(?P<t_ELLIPSIS>\\.\\.\\.)|(?P<t_LOR>\\|\\|)|(?P<t_PLUSPLUS>\\+\\+)|(?P<t_LSHIFTEQUAL><<=)|(?P<t_OREQUAL>\\|=)|(?P<t_PLUSEQUAL>\\+=)|(?P<t_RSHIFTEQUAL>>>=)|(?P<t_TIMESEQUAL>\\*=)|(?P<t_XOREQUAL>\\^=)|(?P<t_ANDEQUAL>&=)|(?P<t_ARROW>->)|(?P<t_CONDOP>\\?)|(?P<t_DIVEQUAL>/=)|(?P<t_EQ>==)|(?P<t_GE>>=)|(?P<t_LAND>&&)|(?P<t_LBRACKET>\\[)|(?P<t_LE><=)|(?P<t_LPAREN>\\()|(?P<t_LSHIFT><<)|(?P<t_MINUSEQUAL>-=)|(?P<t_MINUSMINUS>--)|(?P<t_MODEQUAL>%=)|(?P<t_NE>!=)|(?P<t_OR>\\|)|(?P<t_PERIOD>\\.)|(?P<t_PLUS>\\+)|(?P<t_RBRACKET>\\])|(?P<t_RPAREN>\\))|(?P<t_RSHIFT>>>)|(?P<t_TIMES>\\*)|(?P<t_XOR>\\^)|(?P<t_AND>&)|(?P<t_COLON>:)|(?P<t_COMMA>,)|(?P<t_DIVIDE>/)|(?P<t_EQUALS>=)|(?P<t_GT>>)|(?P<t_LNOT>!)|(?P<t_LT><)|(?P<t_MINUS>-)|(?P<t_MOD>%)|(?P<t_NOT>~)|(?P<t_SEMI>;)', [None, ('t_PPHASH', 'PPHASH'), ('t_NEWLINE', 'NEWLINE'), ('t_LBRACE', 'LBRACE'), ('t_RBRACE', 'RBRACE'), ('t_FLOAT_CONST', 'FLOAT_CONST'), None, None, None, None, None, None, None, None, None, ('t_HEX_FLOAT_CONST', 'HEX_FLOAT_CONST'), None, None, None, None, None, None, None, ('t_INT_CONST_HEX', 'INT_CONST_HEX'), None, None, None, None, None, None, None, ('t_INT_CONST_BIN', 'INT_CONST_BIN'), None, None, None, None, None, None, None, ('t_BAD_CONST_OCT', 'BAD_CONST_OCT'), ('t_INT_CONST_OCT', 'INT_CONST_OCT'), None, None, None, None, None, None, None, ('t_INT_CONST_DEC', 'INT_CONST_DEC'), None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, ('t_INT_CONST_CHAR', 'INT_CONST_CHAR'), None, None, None, None, None, None, ('t_CHAR_CONST', 'CHAR_CONST'), None, None, None, None, None, None, ('t_WCHAR_CONST', 'WCHAR_CONST'), None, None, None, None, None, None, ('t_UNMATCHED_QUOTE', 'UNMATCHED_QUOTE'), None, None, None, None, None, None, None, None, None, None, None, None, None, None, ('t_BAD_CHAR_CONST', 'BAD_CHAR_CONST'), None, None, None, None, None, None, None, None, None, None, ('t_WSTRING_LITERAL', 'WSTRING_LITERAL'), None, None, ('t_BAD_STRING_LITERAL', 'BAD_STRING_LITERAL'), None, None, None, None, None, ('t_ID', 'ID'), (None, 'STRING_LITERAL'), None, None, (None, 'ELLIPSIS'), (None, 'LOR'), (None, 'PLUSPLUS'), (None, 'LSHIFTEQUAL'), (None, 'OREQUAL'), (None, 'PLUSEQUAL'), (None, 'RSHIFTEQUAL'), (None, 'TIMESEQUAL'), (None, 'XOREQUAL'), (None, 'ANDEQUAL'), (None, 'ARROW'), (None, 'CONDOP'), (None, 'DIVEQUAL'), (None, 'EQ'), (None, 'GE'), (None, 'LAND'), (None, 'LBRACKET'), (None, 'LE'), (None, 'LPAREN'), (None, 'LSHIFT'), (None, 'MINUSEQUAL'), (None, 'MINUSMINUS'), (None, 'MODEQUAL'), (None, 'NE'), (None, 'OR'), (None, 'PERIOD'), (None, 'PLUS'), (None, 'RBRACKET'), (None, 'RPAREN'), (None, 'RSHIFT'), (None, 'TIMES'), (None, 'XOR'), (None, 'AND'), (None, 'COLON'), (None, 'COMMA'), (None, 'DIVIDE'), (None, 'EQUALS'), (None, 'GT'), (None, 'LNOT'), (None, 'LT'), (None, 'MINUS'), (None, 'MOD'), (None, 'NOT'), (None, 'SEMI')])], 'ppline': [('(?P<t_ppline_FILENAME>"([^"\\\\\\n]|(\\\\[0-9a-zA-Z._~!=&\\^\\-\\\\?\'"]))*")|(?P<t_ppline_LINE_NUMBER>(0(([uU]ll)|([uU]LL)|(ll[uU]?)|(LL[uU]?)|([uU][lL])|([lL][uU]?)|[uU])?)|([1-9][0-9]*(([uU]ll)|([uU]LL)|(ll[uU]?)|(LL[uU]?)|([uU][lL])|([lL][uU]?)|[uU])?))|(?P<t_ppline_NEWLINE>\\n)|(?P<t_ppline_PPLINE>line)', [None, ('t_ppline_FILENAME', 'FILENAME'), None, None, ('t_ppline_LINE_NUMBER', 'LINE_NUMBER'), None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, None, ('t_ppline_NEWLINE', 'NEWLINE'), ('t_ppline_PPLINE', 'PPLINE')])], 'pppragma': [('(?P<t_pppragma_NEWLINE>\\n)|(?P<t_pppragma_PPPRAGMA>pragma)|(?P<t_pppragma_STR>.+)', [None, ('t_pppragma_NEWLINE', 'NEWLINE'), ('t_pppragma_PPPRAGMA', 'PPPRAGMA'), ('t_pppragma_STR', 'STR')])]}
_lexstateignore = {'INITIAL': ' \t', 'ppline': ' \t', 'pppragma': ' \t'}
_lexstateerrorf = {'INITIAL': 't_error', 'ppline': 't_ppline_error', 'pppragma': 't_pppragma_error'}
_lexstateeoff = {}
