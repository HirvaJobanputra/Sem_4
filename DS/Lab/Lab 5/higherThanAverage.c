// 9. WAP to count numbers higher than average of an array. [C]
#include<stdio.h>
void main()
{
    int n,i;
    float sum,avg;
    printf("Enter size of the array:");
    scanf("%d",&n);
    float array[n];
   
    printf("Enter the elements of array:");
    for(i=0;i<n;i++)
    {
        scanf("%f",&array[i]);
    }
     printf("\n--------------------Elements of Array printed:----------------------------\n");
    for(i=0;i<n;i++)
    {
        printf("%f\n",array[i]);
         sum=sum+array[i];
    }
    avg=sum/n;
    printf("\n-->Average:%f",avg);

    printf("\n-----------------Elements that are higher than the average of the array-------------\n");
    for(i=0;i<n;i++)
    {
        if(array[i]>avg)
        {
            printf("%f\n",array[i]);
        }
    }
}