// find second largest element in array without sorting it
#include<stdio.h>
void main(){
    int array[100],n,i;
    printf("Enter size of array under 100:");
    scanf("%d",&n);
    printf("\nEnter the elements of the array:");
    for(int i=0;i<n;i++)
    {
        scanf("%d",&array[i]);
    }

    array[n];
    int max=array[0];

    for(i=0;i<n;i++)
    {
        if(max<array[i])
        {
            max=array[i];
        }
    }
   int min=-1;
    printf("Max:%d\n",max);
    for(i=0;i<n;i++)
    {
        if(array[i]<max && array[i]>min)
        {
            min=array[i];
        }
    }
    printf("Second largest element:%d\n",min);


}