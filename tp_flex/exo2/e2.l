%option noyywrap
%{
%}
%%
\/\*[^*]*\*+([^/*][^*]*\*+)*\/ printf ( "<Comment>") ;
\/\/.*\n printf("<comment>\n");
%%
int main(){
yylex();
printf("\n");
}
