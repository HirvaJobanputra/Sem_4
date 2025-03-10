#include<stdio.h>
void main()
{
    int i,j,array1[100],array2[100],n,m,temp;
    printf("Enter the size for array 1:");
    scanf("%d",&m);

    printf("\nEnter elements of array:");
    for(i=0;i<m;i++)
    {
        scanf("%d",&array1[i]);
    }
    printf("Enter the size of array 2:");
    scanf("%d",&n);

    printf("\nEnter elements of array 2:");
    for(i=0;i<n;i++)
    {
        scanf("%d",&array2[i]);
    }

    printf("\n");
    for(i=0;i<m;i++)
    {
        for(j=i+1;j<m;j++)
        {
            if(array1[i]>array1[j])
            {
                temp=array1[i];
                array1[i]=array1[j];
                array1[j]=temp;
            }
        }
    }

    printf("Here are the sorted array 1 elements:");
    for(i=0;i<m;i++)
    {
        printf("%d ",array1[i]);
    }
    // temp=0;
    printf("\n");
    for(i=0;i<n;i++)
    {
        for(j=i+1;j<n;j++)
        {
            if(array2[i]>array2[j])
            {
                temp=array2[i];
                array2[i]=array2[j];
                array2[j]=temp;
            }
        }
    }

    printf("Sorted array 2:");
    for(i=0;i<n;i++)
    {
        printf("%d ",array2[i]);
    }

    int array3[m+n];
    // merge the array
    for(i=0;i<m+n;i++)
    {
        if(array1[i]<array2[i])
        {
            array3[i]=array1[i];
        }
    }

    // print merged array
    for(i=0;i<m+n;i++)
    {
        printf("%d",array3[i]);
    }
}