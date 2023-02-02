%{ 
#include<stdio.h> 
#include<string.h> 
  
char ch [] = "Hi"; 
int count = 0; 
  
%} 
%% 
[a-zA-Z]+    { if(strcmp(yytext, ch)==0) 
                   count++; } 
.  ;         
%%  
int yywrap() {     return 1; } int main() {         extern FILE *yyin, *yyout;         yyin=fopen("Histogram.txt", "r"); 
        yylex(); 
           
        printf("total number of words is %d", count); 
      
} 
