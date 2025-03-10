//9. WAP to print sum of series 1 + 4 + 9 + 16 + 25 + 36 + …n. [C]

#include<stdio.h>
void main(){
	int i,sum=0,n;
	printf("Enter n:");
	scanf("%d",&n);
	i=1;
	
	while(i<=n)
	{
		printf("+%d ",i*i);
		sum=sum+(i*i);
		i++;
	}
	printf("Sum=%d",sum);
}
