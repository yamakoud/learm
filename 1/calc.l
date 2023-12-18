%{
#include "calc.tab.h" // yacc で生成されるファイルを読み込むための記述
%}

%option noyywrap

%%

[0-9]+  { yylval = atoi(yytext); return NUMBER; } // 数字を読み込んだら、その値をyylvalにセットしてNUMBERを返す
[+]     { return PLUS; } // +を読み込んだら、PLUSを返す。これは '+' が足し算であることを示すための記述
\n      { return EOL; } // 行末に来たら、EOLを返す。EOLは行末を示すための記述
.       { /* 無視する文字。ピリオドなので、改行以外のすべての文字を無視する */ }

%%
