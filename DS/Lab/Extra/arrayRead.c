//write a program to read and display n numbers using an array
#include<stdio.h>
void main(){
	int n,i;
	printf("Enter the size of the array:");
	scanf("%d",&n);
	int a[n];
	i=0;
	
	while(i<n)
	{
		printf("Enter element number %d\n",i+1);
		scanf("%d",&a[i]);
		i++;
	}
	printf("\nArray elements:\n");
	
	i=0;
	while(i<n)
	{
		printf("%d ",a[i]);
		i++;
	}
	
}
