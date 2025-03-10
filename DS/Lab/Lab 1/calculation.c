#include<stdio.h>
void main(){
	int a;
	int b;
	int sign;
	printf("Enter a:");
	scanf("%d",&a);
	printf("Enter b:");
	scanf("%d",&b);
	
	printf("Enter 1,2,3,4: (+,-,*,/):");
	scanf("%d",&sign);
	
	switch(sign){
			case 1:
			printf("%d",a+b);
			break;
			
			case 2:
			printf("%d",a-b);
			break;
			
			case 3:
			printf("%d",a*b);
			break;
			
			case 4:
			printf("%d",a/b);
			break;
			
			default:
			printf("Invalid input!!");
	}

	
}
