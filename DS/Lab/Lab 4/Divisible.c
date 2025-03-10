#include<stdio.h>
void main(){
    int a,b;
    printf("Enter a:");
    scanf("%d",&a);
    printf("Enter B:");
    scanf("%d",&b);

    for(int i=a; i<=b;i++){
        if(i%2==0 && i%4!=0)
        {
            printf("%d ",i);
        }
    }
}