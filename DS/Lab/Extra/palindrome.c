#include<stdio.h>
void main(){
    int n,i,temp,reminder,reverse=0;
    printf("Enter N:");
    scanf("%d",&n);
    temp=n;

    while(n!=0)
    {
        reminder=n%10;
        reverse=(reverse*10)+reminder;
        n=n/10;
    }

    if(temp==reverse)
    {
        printf("Yes %d is palindrome.",reverse);
    }
    else{
        printf("%d is not palindrome",reverse);
    }
}