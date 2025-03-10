// 18. WAP to print sum of series 1+1/2+1/3+1/4+⋯+1/n. [C]

#include<stdio.h>
void main(){
    float sum=0,i=1;
    int n;

    printf("Enter n:");
    scanf("%d",&n);
    do{
        printf(" %d/%f + ",1,i);
        sum=sum+(1/i);
        i++;
    }while(i<=n);
    printf("\nSum of series: %f",sum);
}