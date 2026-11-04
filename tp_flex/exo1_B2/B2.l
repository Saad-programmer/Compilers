%option noyywrap
%{
%}
motsClefs ("for"|"while"|"if"|"else"|"do")
operateurs (\+|-|=|%|\/|<|>|\*)
symboles (\(|\)|\{|\}|\[|\])
chiffre [0-9]
frac (\.{chiffre}+)
expo ((E|e)(\+|-)?{chiffre}*)
float ({chiffre}+({frac}|\.))|({chiffre}+({frac}|\.)?{expo})|{frac}{expo}? 
integer {chiffre}+
%%
{motsClefs} { printf (" Mot_Cle "); }
[a-zA-Z][a-zA-Z0-9]* { printf ("<%s> ",yytext); }
{operateurs} { printf (" operateur "); }
{symboles} { printf (" symbole "); }
{float} { printf (" float "); }
{integer} { printf (" integer "); }

%%
int main(){
yylex();
printf("\n");
}
