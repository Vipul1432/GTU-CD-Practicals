%{
#include<stdio.h>
%}
%%
"<"[^>]*> printf("%s\n",yytext);
. {;}
%%
void main()
{
yyin = fopen("tags.txt","r");
yylex();
}
int yywrap()
{
return 1;
}
