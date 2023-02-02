%{
#include<stdio.h>
int issimple = 0;
%}
%%
[ \t]+[bB][uU][tT]+[ \t]+ {issimple = 1;}
[ \t]+[aA][nN][dD]+[ \t]+ {issimple = 1;}
[ \t]+[oO][rR]+[ \t]+ {issimple = 1;}
. {;}
%%
void main()
{
printf("Enter Statement: ");
yylex();
if(issimple == 1){
printf("Statement is Compound");
} else {
printf("Statement is Simple");
} 
}
int yywrap()
{
return 1;
}
