%{
#include "y.tab.h"
#include <string.h>
void yyerror (char *s);

int yylex();
%}
/* VARIABLES  */
FLOAT [0-9]*\.[0-9]+f?|[0-9]+f
INT [0-9]+
BOOLEAN true|false
STRING ["][^"\n]*["]
/* BASIC KEYWORDS */
COMMENT \/\/
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

/* ARITHMETIC OPERATORS */
SUM \+
SUB -
MUL \*
DIV \/
REM %

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

{SEMICOLON} {return ";" }
{TYPE} { yyval.id = yytext; return type; }
{FLOAT} { yyval.fval = atof(yytext);return float; }
{INT} {yyval.fval = atoi(yytext);return integer; }
{BOOLEAN} { if(strcmp(yytext,"true")==0){ yyval.ival = 1 }else{yyval.ival=0}  return boolean; }
{STRING} { yval.id = yytext ; return string }
KEYWORD {return yytext;}

{AND} {printf("AND ");}
{OR} {printf("OR ");}
{GTH} {printf("GREATER-THAN ");}
{LTH} {printf("LESS-THAN ");}
{GTHEQ} {printf("GREATER-OR-EQUAL-THAN ");}
{LTHEQ} {printf("LESS-OR-EQUAL-THAN ");}
{EQUALS} {printf("EQUAL ");}
{NEQUALS} {printf("NOT-EQUAL ");}

{SUM}|{SUB}|{MUL}|{DIV}|{REM} {return yytext;}

{SOP} {return yytext;}
{EOP} {return yytext;}
{SOB} {return yytext;}
{EOB} {return yytext;}
{SOCB} {return yytext;}
{EOCB} {return yytext;}


{COMMENT} {return comment}
{ASSIGN} { printf("ASSIGN "); }
{VARIABLE}  { printf("VARIABLE{%s} ", yytext ); }
{IGNORED} {printf("%s",yytext);}
. { printf("SYNTAX ERROR: %s",yytext); }
%%
