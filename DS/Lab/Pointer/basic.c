#include<stdio.h>
void main(){
    int a=10;
    int *p=&a;
    int **ptr=&p;
    printf("--Value of a: %d\n",a);
    printf("--Address of a(&a): %p\n",&a);
    printf("--Value of a(*p): %d\n",*p);
    printf("--Address of a(p): %p\n",p);
    printf("--Address of p(&p): %p\n",&p);


    printf("------------Double pointer---------\n");
    printf("--Value of *ptr: %p\n",*ptr);
    printf("--Address of ptr(&ptr): %p\n",&ptr);
    printf("--Value of **ptr: %d\n",**ptr);

}