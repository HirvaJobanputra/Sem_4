#include<stdio.h>
void main(){
    int size;
    int key;

    printf("Enter the size of the array: ");
    scanf("%d",&size);
    int arr[size];
    printf("Enter the elements of the array: ");
    for (int i=0; i<size; i++){
        scanf("%d",&arr[i]);
    }
    printf("\nUnSorted Array:");
    for (int i=0;  i<size; i++){
        printf("%d ",arr[i]);
    }
    for (int i=1; i<size; i++)
    {
        key=arr[i];
        int j = i-1;
        while(j>=0 && arr[j]<key){
            arr[j+1]=arr[j];
            j=j-1;
        }

        arr[j+1]=key;
        

    }
    printf("\nSorted Array:");
    for (int i=0;  i<size; i++){
        printf("%d ",arr[i]);
    }
}