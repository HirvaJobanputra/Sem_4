#include<stdio.h>
void main(){
    int a[10],sum=0;
    printf("Enter 10 elements:");
    for(int i=0;i<10;i++){
        scanf("%d",&a[i]);
    }
    for (int i=0; i<10; i++){
        if(a[i]%2==0)
        {
            sum=sum+a[i];
        }
    }
    printf("Sum=%d",sum);
}