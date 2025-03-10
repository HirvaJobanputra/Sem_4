#include<stdio.h>
void main(){
	int a;
	int b;
	printf("Enter a:");
	scanf("%d",&a);
	printf("Enter b:");
	scanf("%d",&b);
	
	if(a>b){
		printf("%d is largest.",a);
	}
	if(a<b){
		printf("%d is largest",b);
	}
}
