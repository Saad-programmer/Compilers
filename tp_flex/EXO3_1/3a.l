%option noyywrap

%{
#include <stdio.h>
%}

consonne     [b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]
voyordonnee  ^{consonne}*[aA]{consonne}*[eE]{consonne}*[iI]{consonne}*[oO]{consonne}*[uU]{consonne}*$

%%
{voyordonnee} {
    printf("Cinq voyelles dans l'ordre <%s>\n", yytext);
}
\n    ;
.     ;
%%

int main(void)
{
    yylex();
    return 0;
}
