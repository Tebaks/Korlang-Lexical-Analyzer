/* VARIABLES  */
FLOAT [0-9]*\.[0-9]+f?|[0-9]+f
INT [0-9]+
BOOLEAN true|false
STRING ["][^\n\r]*["]
/* BASIC KEYWORDS */
ASSIGN =
SEMICOLON ;
VARIABLE [a-zA-Z][a-zA-Z0-9_]*
TYPE var|const
/* LOGICAL OPERATORS */
AND &&
OR \|\|
GTH >
LTH <
GTHEQ >=
LTHEQ <=
EQUALS ==
NEQUALS !=

/* PARANTHESES */
SOP \(
EOP \)
SOB \[
EOB \]
SOCB \{
EOCB \}

/*KEYWORDS*/
KEYWORD kor|func|return|if|else|for|struct|range


/*IGNORED*/
IGNORED [ \n\r]+
%%

{SEMICOLON} { printf("SEMICOLON "); }
{TYPE} { printf("TYPE{%s} ", yytext ); }
{FLOAT} { printf("FLOAT{%s} ", yytext ); }
{INT} { printf("INT{%s} ", yytext ); }
{BOOLEAN} { printf("BOOLEAN{%s} ", yytext ); }
{STRING} { printf("STRING{%s} ", yytext ); }
{KEYWORD} {printf("KEYWORD{%s} ",yytext);}

{AND} {printf("AND ");}
{OR} {printf("OR ");}
{GTH} {printf("GREATER-THAN ");}
{LTH} {printf("LESS-THAN ");}
{GTHEQ} {printf("GREATER-OR-EQUAL-THAN ");}
{LTHEQ} {printf("LESS-OR-EQUAL-THAN ");}
{EQUALS} {printf("EQUAL ");}
{NEQUALS} {printf("NOT-EQUAL ");}

{SOP} {printf("SOP ");}
{EOP} {printf("EOP ");}
{SOB} {printf("SOB ");}
{EOB} {printf("EOB ");}
{SOCB} {printf("SOCB ");}
{EOCB} {printf("EOCB ");}



{ASSIGN} { printf("ASSIGN "); }
{VARIABLE}  { printf("VARIABLE{%s} ", yytext ); }
{IGNORED} {printf("%s",yytext);}
. { printf("SYNTAX ERROR: %s",yytext); }
%%
