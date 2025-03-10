#include<stdio.h>
void main(){
    int arr[] = {1,2,3,4,5,6,7,8,9,10};
    int low=0,high=9,mid,flag=0;
    while(low<=high)
    {
        mid = (low+high)/2;
        if(arr[mid]==5      )
        {
            printf("Element found at index %d",mid);
            flag=1;
            break;
        }
        else if(arr[mid]<5)
        {
            low = mid+1;
        }
        else
        {
            high = mid-1;
        }
    }
    if(flag==0)
    {
        printf("Element not found");
    }
}