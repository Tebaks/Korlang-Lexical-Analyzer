/* VARIABLES  */
FLOAT [0-9]*\.[0-9]+f?|[0-9]+f
INT [0-9]+
BOOLEAN true|false
STRING ["][^\n\r]*["]
/* BASIC KEYWORDS */
EQUALS =
SEMICOLON ;
VARIABLE [a-zA-Z][a-zA-Z0-9]*
TYPE int|float|string|bool
/*IGNORED*/
IGNORED [ \n\r]+
%%
{SEMICOLON} { printf(" SEMICOLON "); }
{TYPE} { printf(" TYPE{%s} ", yytext ); }
{FLOAT} { printf(" FLOAT{%s} ", yytext ); }
{INT} { printf(" INT{%s} ", yytext ); }
{BOOLEAN} { printf(" BOOLEAN{%s} ", yytext ); }
{EQUALS} { printf(" EQUALS "); }
{STRING} { printf(" STRING{%s} ", yytext ); }
{VARIABLE}  { printf(" VARIABLE{%s} ", yytext ); }
{IGNORED} {printf("%s",yytext);}
. { printf("SYNTAX ERROR: %s",yytext); }
%%
