//11. WAP to print sum of series 1 + 1/2 +1/3 +1/4 +....+ 1/n. [C]
#include<stdio.h>
void main(){
	int n;
	float sum=0.0,i=1;
	printf("Enter n:");
	scanf("%d",&n);
	
	while(i<=n){
		printf("1/%f + ",i);
		sum=sum+(1/i);
			i++;
	}

	printf("\nSum=%f",sum);
}
