// wap to rotate an array to the left by a given number of positions
#include<stdio.h>
void main(){
    int i,array[100],n,pos;
    printf("Enter the size of the array under 100:");
    scanf("%d",&n);
    array[n];
    printf("Enter the elements of the array:");
    for (i=0; i<n; i++)
    {
        scanf("%d",&array[i]);
    }

    printf("Enter the position to perform rotation:");
    scanf("%d",&pos);

    printf("Rotated array:");
    for(i=pos-1; i<n; i++)
    {
        printf("%d ",array[i]);
    }
    for(i=0; i<pos-1; i++)
    {
         printf("%d ",array[i]);
    }

   
}