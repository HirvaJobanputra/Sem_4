#include<stdio.h>
int fact(int);
void main(){
	int a;
	printf("Enter a:");
	scanf("%d",&a);
	int ans = fact(a);
	printf("factorial of %d: %d",a,ans);
}

int fact(int n){
	
	if(n==0 || n==1)
	{
		return 1;
	}
	else
	{
		return fact(n-1)*n;
	}
}
