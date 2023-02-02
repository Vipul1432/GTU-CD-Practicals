%{ 
#include<stdio.h> 
#include<string.h> 
int total=0; 
char ch[] = "Shibu"; 
%} 
%% 
[a-zA-Z]+ {if (strcmp(yytext,ch)==0) 
    total++;
} 
%% 
void main() 
{ 
 
yyin = fopen("text.txt","r"); 
yylex(); 
printf("total no.of vipul is %d", total); 
} 
int yywrap() 
{ 
return 1; 
}
