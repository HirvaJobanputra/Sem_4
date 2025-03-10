// 26. WAP to read n numbers in an array and print them. [A]
#include<stdio.h>
void main(){
    int n,i;
    printf("Enter size of the array:");
    scanf("%d",&n);
    int array[n];
    printf("Enter the elements of array:");
    for(i=0;i<n;i++)
    {
        scanf("%d",&array[i]);
    }

    printf("\nElements of Array:\n");
    for(i=0;i<n;i++)
    {
        printf("%d\n",array[i]);
    }
}