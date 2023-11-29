%{
#include <stdio.h>

extern int yylex();
void yyerror(const char *s);
%}

%token NUMBER PLUS EOL

%%

calculation:
  | calculation line
  ;

line: 
  NUMBER { printf("%d\n", $1); }
  | expr EOL { printf("%d\n", $1); }
  ;

expr: 
  NUMBER { $$ = $1; }
  | expr PLUS NUMBER { $$ = $1 + $3; }
  ;

%%

void yyerror(const char *s) {
  fprintf(stderr, "エラー: %s\n", s);
}

int main(void) {
  yyparse();
  return 0;
}
