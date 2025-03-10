#include<stdio.h>
void main(){
    int a=10,b=20,temp;
    printf("A:%d \nB:%d \n",a,b);
    printf("Value before swapping:\n");
    int *pA=&a,*pB=&b;   
    temp=*pA;
    *pA=*pB;
    *pB=temp;
    printf("Value After swapping:\n");
    printf("A:%d \nB:%d \n",a,b);

}
