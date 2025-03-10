#include<stdio.h>

void selectionsort(int arr [],int size)
{
	int i,j;
	for(i=0;i<size-1;i++)
	{
		//find the minimum
		int minindex = i;
		for(j=i+1;j<size;j++)
		{
			if(arr[j]<arr[minindex])
			{
				minindex=j;
			}
		}
		if(minindex!=i)
		{
			int temp=arr[i];
			arr[i]=arr[minindex];
			arr[minindex]=temp;
		}
	}
}
void main()
{
	int size,i;

    printf("Enter the number of elements: ");
    scanf("%d", &size);

    int arr[size];

    printf("Enter the elements:\n");
    for(i = 0; i < size; i++) {
        scanf("%d", &arr[i]);
    }

    selectionsort(arr, size);

    printf("Sorted array: ");
    for(i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");

}


