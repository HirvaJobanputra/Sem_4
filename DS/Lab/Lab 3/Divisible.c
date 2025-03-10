#include<stdio.h>
void main(){
    int n;
    int i=1;
    printf("Enter n:");
    scanf("%d",&n);
    do{
        if(i%2==0 && i%4!=0){
             printf("%d\n",i);
        }
        i++;
    }while(i<=n);
}