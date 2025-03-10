//10. WAP to print sum of series 1 – 2 + 3 – 4 + 5 – 6 + 7 … n. [C]
#include<stdio.h>
void main(){
	int i,sum=0,n;
	printf("Enter n:");
	scanf("%d",&n);
	i=1;
	
	while(i<=n)
	{
		if(i%2==0)
		{
			sum=sum-i;
			printf("-%d",i);
		}
		else{
			sum=sum+i;
			printf("+%d",i);
		}
		i++;
	}
	printf("\nSum=%d",sum);
}
