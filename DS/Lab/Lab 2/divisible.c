//
//. WAP to print numbers between two given numbers which are divisible by 2 but
//not divisible by 4. 
#include<stdio.h>
void main(){
	int a;
	int b;
	printf("Enter a:");
	scanf("%d",&a);
	printf("Enter b:");
	scanf("%d",&b);
	int i;
	i=a;
	while (i<=b)
	{
		if(i%2==0 && i%4!=0)
		{
			printf("%d ",i);
		}
		i++;
	}
	
}

