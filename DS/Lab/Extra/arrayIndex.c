#include<stdio.h>
void main(){
	int n;
	printf("Enter n:");
	scanf("%d",&n);
	
	int a[n];
	while(i<n)
	{
		printf("Enter element number %d\n",i+1);
		scanf("%d",&a[i]);
		i++;
	}
	i=0;
	int min=a[0];
	int max=a[0];
	while(i<n)
	{
		if(max<a[0])
		{
			max=a[0];
		}
		if(min>a[0])
		{
			min=a[0];
		}
	}
	printf("min=%d",min);
	printf("max=%d",max);
}
