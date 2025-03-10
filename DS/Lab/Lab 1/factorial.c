#include<stdio.h>
void main(){
	//factorial
	int a;
	printf("Enter a:");
	scanf("%d",&a);
	
	int fact=1;
	if(a!=0 && a!=1){
		while(a!=0)
		{
			fact=fact*a;
			a--;
		}
	}
	printf("Factorial = %d",fact);
	
}
