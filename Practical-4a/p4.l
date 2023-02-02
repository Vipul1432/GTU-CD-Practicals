%{
#include<stdio.h>
%}
%%
"I" {printf("1");}
"II" {printf("2");}
"III" {printf("3");}
"IV" {printf("4");}
"V" {printf("5");}
"VI" {printf("6");}
"VII" {printf("7");}
"VIII" {printf("8");}
"IX" {printf("9");}
. {;}
%%
void main()
{
printf("Enter String");
yylex();
}
int yywrap()
{
return 1;
}
