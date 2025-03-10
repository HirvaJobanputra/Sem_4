#include<stdio.h>
void main(){
    int n,sum=0;
    int i=1;

    printf("Enter n:");
    scanf("%d",&n);
    do{
         if(i%2==0){
            printf("-%d",i);
            sum=sum-i;
         }
         else{
            sum=sum+i;
             printf("+%d",i);
         }
        i++;
    }while(i<=n);
    printf("\nSum of series: %d",sum);
}