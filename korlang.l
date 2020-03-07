/* VARIABLES  */
FLOAT [0-9]*\.[0-9]+f?|[0-9]+f
INT [0-9]+
BOOLEAN true|false
STRING ["][^\n\r]*["]
/* BASIC KEYWORDS */
ASSIGN =
SEMICOLON ;
VARIABLE [a-zA-Z][a-zA-Z0-9]*_*[a-zA-Z0-9]*
TYPE int|float|string|bool
/* LOGICAL OPERATORS */
AND &&
OR \|\|
GTH >
LTH <
GTHEQ >=
LTHEQ <=
EQUALS ==
NEQUALS !=
IF if
ELSE else
SOP \(
EOP \)



/*IGNORED*/
IGNORED [ \n\r]+
%%

{SEMICOLON} { printf("SEMICOLON "); }
{TYPE} { printf("TYPE{%s} ", yytext ); }
{FLOAT} { printf("FLOAT{%s} ", yytext ); }
{INT} { printf("INT{%s} ", yytext ); }
{BOOLEAN} { printf("BOOLEAN{%s} ", yytext ); }
{STRING} { printf("STRING{%s} ", yytext ); }

{AND} {printf("AND ");}
{OR} {printf("OR ");}
{GTH} {printf("GREATER-THAN ");}
{LTH} {printf("LESS-THAN ");}
{GTHEQ} {printf("GREATER-OR-EQUAL-THAN ");}
{LTHEQ} {printf("LESS-OR-EQUAL-THAN ");}
{EQUALS} {printf("EQUAL ");}
{NEQUALS} {printf("NOT-EQUAL ");}
{IF} {printf("IF ");}
{ELSE} {printf("ELSE ");}
{SOP} {printf("SOP ");}
{EOP} {printf("EOP ");}





{ASSIGN} { printf("ASSIGN "); }
{VARIABLE}  { printf("VARIABLE{%s} ", yytext ); }
{IGNORED} {printf("%s",yytext);}
. { printf("SYNTAX ERROR: %s",yytext); }
%%
