//28. WAP to find Maximum, Minimum, Sum, and Average of given numbers in an array. [B]
#include<stdio.h>
void main(){
    int n,i;
    float sum,avg,min,max;
    printf("Enter size of the array:");
    scanf("%d",&n);
    float array[n];
   
    printf("Enter the elements of array:");
    for(i=0;i<n;i++)
    {
        scanf("%f",&array[i]);
    }
    min=array[0];
    max=array[0];

    printf("\nElements of Array printed:\n");
    for(i=0;i<n;i++)
    {
        printf("%f\n",array[i]);
        if(min>array[i])
        {
            min=array[i];
        }
        if(max<array[i])
        {
            max=array[i];
        }
        sum=sum+array[i];
    }

    avg=sum/n;
    printf("\nSum:%f",sum);
    printf("\nAverage:%f",avg);
    printf("\nMinimum:%f",min);
    printf("\nMax:%f",max);
}