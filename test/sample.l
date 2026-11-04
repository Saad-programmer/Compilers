%{
#include <stdio.h>
%}

%%
[A-Z]   { printf("%s is a Capital Letter\n", yytext); }
[a-z]   { printf("%s is a Small Letter\n", yytext); }
\n      { return 0; } /* Exit on pressing Enter */
.       { printf("%s is an Unknown Character\n", yytext); }
%%

int yywrap() {
    return 1;
}

int main() {
    printf("Enter any text: ");
    yylex();
    return 0;
}
