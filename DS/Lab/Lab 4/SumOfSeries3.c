#include<stdio.h>
void main(){
    int n;
    float sum=0,i;
    printf("Enter n:");
    scanf("%d",&n);
    for (i=1;i<=n;i++){
      printf("%d/%f + ",1,i);
      sum=sum+(1/i);
    }
    printf("\nSum=%f",sum);
}