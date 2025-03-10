#include<stdio.h>
void main(){
    int n,i,sum=0;
    printf("Enter n:");
    scanf("%d",&n);
    for (i=1;i<=n;i++){
        sum=sum+(i*i);
        printf("%d ",i*i);
    }
    printf("\nSum=%d",sum);
}