#include<stdio.h>
void main(){
    int n,sum=0;
    int i=1;

    printf("Enter n:");
    scanf("%d",&n);
    do{
         printf("%d ",i*i);
         sum=sum+(i*i);
         
        i++;
    }while(i<=n);
    printf("\nSum of series: %d",sum);
}