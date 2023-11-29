%{
#include "calc.tab.h"
%}

%option noyywrap

%%

[0-9]+  { yylval = atoi(yytext); return NUMBER; }
[+]     { return PLUS; }
\n      { return EOL; }
.       { /* 無視する文字 */ }

%%
