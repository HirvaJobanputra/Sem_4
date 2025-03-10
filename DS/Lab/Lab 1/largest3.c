#include<stdio.h>
void main(){
	int a;
	int b;
	int c;
	printf("Enter a:");
	scanf("%d",&a);
	printf("Enter b:");
	scanf("%d",&b);
	printf("Enter c:");
	scanf("%d",&c);
	
	if(a>b && a>c)
	{
		printf("A=%d is largest.",a);
	}
	else if(b>c && b>a)
	{
		printf("B=%d is largest.",b);
	}
	else if(c>a && c>b){
		printf("C=%d is largest.",c);
	}
	else if(a==b && b==c)
	{
		printf("All three are same.");
	}
	
}
