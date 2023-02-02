#include<stdio.h>
void main() {
    int currentstate;
    char ch[256];
    char n;
    int finalstate;
    printf("Enter a String: ");
    scanf("%s",ch);
    for(int i=0; i<ch[i]; i++) 
    {

         if(currentstate==0 && ch[0] == 'a')
         currentstate++;
         
         if(currentstate==1 && ch[1] == 'b')
         currentstate++;

         if(currentstate==2 && ch[2] == 'b')
         currentstate++;
         
    }
    if(currentstate==3)
    printf("String accepted");
    else
    printf("String rejected");
    
}
