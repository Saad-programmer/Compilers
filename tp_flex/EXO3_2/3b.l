%option noyywrap
%{
%}
alpha (a|b)*
mot ^(a{alpha}*b|b{alpha}*a)$
%%
{mot}   { printf("Mot commençant ou finissant par a<%s> \n", yytext); }
.|\n    {}
%%
int main()
{
   yylex();
   printf("\n");
}
