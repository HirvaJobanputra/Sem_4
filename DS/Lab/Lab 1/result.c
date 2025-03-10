#include<stdio.h>
void main(){
	float php;
	float ds;
	float python;
	float c;
	float java;
	
	printf("Enter marks of math, ds, python, c, java out of 100:");
	scanf("%f",&php);
	scanf("%f",&ds);
	scanf("%f",&python);
	scanf("%f",&c);
	scanf("%f",&java);
	
	float per;
	per=((php+ds+python+c+java)*100)/500;
	printf("%f",per);
	
	
	if(per<35){
		printf("\nFail");
	}
	else if(per>35 && per<45)
	{
		printf("\nPass");
	}
	else if(per>45 && per<60)
	{
		printf("\nSecond class.");	
	}
	else if(per>60 && per<70)
	{
		printf("\nFirst class.");
	}
	else if(per>70 && per<=100)
	{
		printf("\nDistinction");
	}
	else{
		printf("Input to sachu nakh kaka.");
	}
}
