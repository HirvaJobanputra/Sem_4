#include<stdio.h>
#include<string.h>
void main(){
    char name[10]={"maam"};
    char temp[10];
    int flag=0;
    int length;

    length=strlen(name);
    for(int i=0; i<length; i++)
    {
        temp[i]=name[i];
    }
    strrev(name);
    
    for(int i=0; i<length; i++)
    {
        if(name[i]!=temp[i])
        {
            flag=1;
            break;
        }

    }

    if(flag==0)
    {
        printf("%s is palindrome", name);
    }
    else{
        printf("%s is not palindrome",name);
    }


}