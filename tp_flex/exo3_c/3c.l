%option noyywrap
%{
%}
mot ^((ab)*a?|(ba)*b?)$
%%
{mot}   { printf("Mot valide <%s> \n", yytext); }
.|\n    {}
%%
int main()
{
   yylex();
   printf("\n");
}
