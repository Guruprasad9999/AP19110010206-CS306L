%{
int line_number = 1; // initializing line number to 1
%}

line .*\n	

%%
{line} { printf("%10d %s", line_number++, yytext); }
%%



int main(int argc, char*argv[])
{
extern FILE *yyin; // yyin as pointer of File type

yyin = fopen("testtest.c","r"); /* yyin points to the file
								testtest.c and opens it
								in read mode.*/

yylex(); // The function that starts the analysis.

return 0;
}

int yywrap()
{
	return 1;
}
