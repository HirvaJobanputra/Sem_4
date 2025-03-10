#include<stdio.h>
void main(){
    printf("Hello world!!!!!!!!!!!!!!!!!");
    // address using single line
    printf("Address:\nABC nagar,\nDEF society,\nGHI road,\nMorbi.");
    
    // Address using multiple lines
    printf("\nAddress using multiple printf:\n");
    printf("ABC nagar,\n");
    printf("DEF society,\n");
    printf("GHI road,\n");
    printf("Morbi.");
    
    // Sum of twoo
    printf("\nSum of two:\n");
    int a=100;
    int b=108;
    printf("%d",a+b);
    
    
    // avg of two
    printf("\nAverage:");
    float d=10.0;
    float c=20.0;
    printf("%f\n",(c+d)/2);
    
    // scanf add
    int e;
    int f;
    printf("Enter e :");
    scanf("%d",&e);
    printf("Enter f :");
    scanf("%d",&f);
    printf("sum = %d",e+f);
    
}
