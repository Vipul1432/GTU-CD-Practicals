%{ 
#include<stdio.h> 
int total=0; 
%} 
%% 
[a-z]+ {char ch=yytext[0]; 
 	ch =ch+2;  	if(ch>'z')  	
          ch=ch-('z'+1-'a');  	
          printf("%c", ch);} 
[A-Z]+ {char ch = yytext[0]; 
 	ch=ch+2;  	
if(ch>'Z')  	
ch=ch-('Z'+1-'A');  	
printf("%c", ch);} 
%% 
void main() {
printf("Enter the character");
 yylex(); 
} 
int yywrap() { 
return 1; 
}
