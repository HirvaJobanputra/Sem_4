#include<stdio.h>
void main(){
    int n;
    printf("Enter the size of the array:");
    scanf("%d",&n);
    int arr[n];
    printf("Enter the elements of the array:");
    for (int i=0; i<n; i++){
        scanf("%d",&arr[i]);
    }
    int ele,flag=0;
    printf("Enter the element you want to search:");
    scanf("%d",&ele);

    for (int i=0; i<n;i++){
        if(arr[i]==ele){
            flag=1;
            printf("\nThe element founc at position %d",i+1);
        }
    }
    if(flag==0){
        printf("Element was not found!!!");
    }
}