//27. WAP to read n numbers in an array and print them in reverse order. [A]
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

    printf("\nElements of Array printed in reverse order:\n");
    for(i=n-1;i>=0;i--)
    {
        printf("%d\n",array[i]);
    }
}
