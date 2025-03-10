#include<stdio.h>
void main(){
    int n,i,sum=0;
    printf("Enter n:");
    scanf("%d",&n);
    for (i=1;i<=n;i++){
        if(i%2==0){
            printf("-%d",i);
        }
        else{
            printf("+%d",i);
        }
    }
    printf("\nSum=%d",sum);
}