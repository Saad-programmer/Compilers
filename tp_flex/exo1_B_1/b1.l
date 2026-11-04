%option noyywrap
%{
%}
motsClefs ("for"|"while"|"if"|"else"|"do"|"printf"|"scanf")
operateurs (\+|-|=|%|\/|<|>|\*)
symboles (\(|\)|\{|\}|\[|\])
%%
{motsClefs} { printf (" Mot_Cle "); }
[a-zA-Z][a-zA-Z0-9]* { printf ("<%s> ",yytext); }
{operateurs} { printf (" operateur "); }
{symboles} { printf (" symbole "); }
%%
int main(){
yylex();
printf("\n");
}
