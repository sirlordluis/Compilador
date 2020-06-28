grammar Simple;

program:INICIO_PROGRAMA ID BRACKET_OPEN 
	sentencia*
	BRACKET_CLOSE;
sentencia:var_decl | var_assign;

var_decl: TIPOS ID PUNTO_COMA;
var_assign:ID ASSIGN NUMBER PUNTO_COMA;



/*TIPOS*/
TIPOS: 'Entero'|'Real';
/*INICIO DE PROGRAMA*/
INICIO_PROGRAMA: 'program';
/*OPERACIONES*/
MAS:'+';
MENOS:'-';
MULT:'*';
DIV:'/';
/*OPERADORES LOGICOS*/
AND:'&&';
OR:'or';
NOT:'not';
/*---------*/
GT:'>';
LT:'<';
GEQ:'>=';
LEQ:'<=';
EQ:'==';
NEQ:'!=';
/*SIGNOS*/
ASSIGN:'=';
BRACKET_OPEN:'{';
BRACKET_CLOSE:'}';
PAR_OPEN:'(';
PAR_CLOSE:')';
PUNTO_COMA:';';

ID:[a-zA-Z_][a-zA-Z0-9_]*;
NUMBER: ('0' .. '9') +;
WS: [\t\n\r]+ -> skip;