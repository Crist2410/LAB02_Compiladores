OR		OR
AND 	AND
NOT		NOT
TRUE	TRUE
FALSE	FALSE

%%
[\n()]    return yytext[0];
[ \t]		; { /* Espacios en blanco */ }
{AND}	{return AND; }
{OR}	{return OR; }
{NOT}	{return NOT; }
{TRUE}	{yylval = 1; return (TRUE);}
{FALSE} {yylval = 0; return (FALSE);}
.		printf("Error\n");
%%

int yywrap(void)
{
	return 0;
}
