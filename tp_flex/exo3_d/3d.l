%option noyywrap
%{
%}
mot ^(b*(a*(b{2,})*)*b*)$
%%
{mot}   { printf("Mot valide <%s> \n", yytext); }
.|\n    {}
%%
int main()
{
   yylex();
   printf("\n");
}
