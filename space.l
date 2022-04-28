%{
#include<stdio.h>
int lines=0, words=0,s_letters=0,c_letters=0, num=0, spl_char=0,total=0;
%}
%% 
\n { lines++; words++;}
[\t ' '] words++;
[A-Z] c_letters++;
[a-z] s_letters++;
[0-9] num++;
. spl_char++;
%%
int main(void)
{
yyin= fopen("info.txt","r");
yylex();
total=s_letters+c_letters+num+spl_char;
printf("\n This File contains ...");
printf("\n lines : %d", lines);
printf("\n words : %d", words);
printf("\n small letters : %d", s_letters);
printf("\n capital letters : %d",c_letters);
printf("\n digits : %d", num);
printf("\n special characters : %d",spl_char);
printf("\n In total %d characters.\n",total);
} 
int yywrap()
{
return(1);
}
