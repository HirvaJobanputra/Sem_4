#include<stdio.h>
void main(){
	// calculate result of 4 subjects
	int k;
	int e;
	int g;
	int h;
	
	printf("Enter marks of korean: ");
	scanf("%d",&k);
	
	printf("Enter marks of english: ");
	scanf("%d",&e);
	
	printf("Enter marks of gujarati:");
	scanf("%d",&g);
	
	printf("Enter marks of hindi:");
	scanf("%d",&h);
	
	printf("%d %d %d %d",k,e,g,h);
    int	total=k+e+g+h;
    
	printf("\nTotal: ",total);
	


	
}
