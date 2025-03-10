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
}
