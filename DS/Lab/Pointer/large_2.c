#include<stdio.h>
void max(int *pA, int *pB){
    
    if(*pA>*pB)   
    {
        printf("%d is larger",*pA);
    }
    else{
        printf("%d is larger",*pB);
    }
}
void main(){
    int a=10, b=20;
    int *pA=&a, *pB=&b;
    max(pA,pB);
}
