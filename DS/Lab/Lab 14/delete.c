#include<stdio.h>
struct book{
    int data;
    int *link;
}b;
void main(){
    printf("%d\n", sizeof(struct book));
    printf("%d\n", sizeof(b.data));
    printf("%d", sizeof(b.link));
}