%{
	int num_vowel=0;
	int num_consonant=0;
%}

%%
[aeiouAEIOU]	++num_vowel;
[a-zA-Z]		++num_consonant;
%%

main()
{
	yylex();
	printf("\nno of vowel=%d",num_vowel);
	printf("\nno of consonant=%d",num_consonant);

}
int yywrap()
{
	return 1;
}