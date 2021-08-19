%{
	int num_lines=0;
%}

%%
\n	++num_lines;
%%

main()
{
	yylex();
	printf("\nno of lines=%d",num_lines);

}
int yywrap()
{
	return 1;
}