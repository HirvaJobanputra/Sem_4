#include<stdio.h>
void main(){
    int size,index,n;
    printf("Enter the size of the array:");
    scanf("%d",&size);
    int array[size];
    printf("Enter the elements of array:");
     for(int i=0;i<size;i++){
        scanf("%d",&array[i]);
    }
    printf("Enter the number you want to insert:");
    scanf("%d",&n);
    printf("Enter the position at which you want to enter the number:");
    scanf("%d",&index);

    for(int i=0;i<size;i++){
        if(i==index){
            array[i]=n;
        }
    }
    for(int i=0;i<size;i++){
        printf("%d",array[i]);
    }
}