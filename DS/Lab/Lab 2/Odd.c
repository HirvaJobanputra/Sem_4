#include<stdio.h>
void main(){
	int n;
	printf("Enter n:");
	scanf("%d",&n);
	int i=1;
	while(i<=n){
		if(i%2!=0)
		{
			printf("%d ",i);
		}
			i++;
	}
}
