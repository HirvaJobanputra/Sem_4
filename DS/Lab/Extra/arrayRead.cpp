//write a program to read and display n numbers using an array
#include<stdio.h>
void main(){
	int a[],n,i;
	printf("Enter the size of the array:");
	scanf("%d",&n);
	a[n];
	i=0;
	
	while(i<n)
	{
		printf("Enter element number %d\n",i+1);
		scanf("%d",&a[i]);
		i++;
	}
	
	while(i<n){
		printf("Element %d=%d\n",i,a[i]);
	}
	
}
