#include<stdio.h>
void main(){
    int *p1,*p2,n,sum=0;
    printf("Enter the size of the array:\n");
    scanf("%d",&n);
    int arr1[n],arr2[n];
    p1=arr1;
    p2=arr2;

    printf("Enter array elements:");
    for (int i=0;i<n;i++){
        scanf("%d",p1+i);
    }
    printf("*(p+i)\n");
    for (int i=0;i<n;i++){
        printf("%d\n",*(p1+i));
    }
    printf("arr[i]\n");
    for (int i=0;i<n;i++){
        printf("%d\n",arr1[i]);
    }

    printf("Enter array elements for array 2:");
    for (int i=0;i<n;i++){
        scanf("%d",p2+i);
    }
    printf("*(p+i)\n");
    for (int i=0;i<n;i++){
        printf("%d\n",*(p2+i));
    }
    printf("arr[i]\n");
    for (int i=0;i<n;i++){
        printf("%d\n",arr2[i]);
    }

    int *p3;
    printf("Sum of array elements is :");
     for (int i=0;i<n;i++){
        *(p3+i)=(*p1+i)+(*p2+i);
        printf("%d\n",*(p3+i));
     }
}