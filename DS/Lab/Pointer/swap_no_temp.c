#include<stdio.h>
void main(){
    // Without temp
    int a=10,b=20;
     printf("Value before swapping:\n");
  
   
    int *pA=&a,*pB=&b;
    printf("A:%d \nB:%d \n",*pA,*pB);
    *pA=*pA + *pB;
    *pB=*pA - *pB;
    *pA=*pA - *pB;
    printf("Value After swapping:\n");
    printf("A:%d \nB:%d \n",*pA,*pB);
}