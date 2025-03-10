#include<stdio.h>
void main(){
    int *p,n;
    printf("Enter the size of the array:\n");
    scanf("%d",&n);
    int arr[n];
    p=arr;

    printf("Enter array elements:");
    for (int i=0;i<n;i++){
        scanf("%d",p+i);
    }
    printf("*(p+i)\n");
    for (int i=0;i<n;i++){
        printf("%d\n",*(p+i));
    }
    printf("arr[i]\n");
    for (int i=0;i<n;i++){
        printf("%d\n",arr[i]);
    }
}