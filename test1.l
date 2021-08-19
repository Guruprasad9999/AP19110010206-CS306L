
%%
[aeiouAEIOU]	{printf("%s is a vowel\n",yytext);}
[a-zA-Z]		{printf("%s is a consonant\n",yytext);}
.				{printf("%s is invalid lexeme\n",yytext);}
%%

main()
{
	yylex();

}
int yywrap()
{
	return 1;
}