//31. Write a program to read data of students in array of structure and print it. [C]
 struct student{
        char name[100];
        int age;
        float spi;
        int roll;
    };
#include<stdio.h>
#include<string.h>
void main(){
    int n;
    printf("Enter the size for the structure:");
    scanf("%d",&n);
    struct student s[n];
     for(int i=0;i<n;i++){
        printf("Enter the data of student %d:\n",i);
        printf("Enter name:");
        scanf("%s",s[i].name);
        printf("Enter the age:");
        scanf("%d",&s[i].age);
         printf("Enter Roll number:");
         scanf("%d",&s[i].roll);
         printf("Enter SPI:");
         scanf("%f",&s[i].spi);  
     }
     for(int i=0; i<n; i++)
     {
        printf("\nDetails of the student %d:\n",i);
        printf("Name: %s\n",s[i].name);
        // printf("Roll no.:%d\n",s[i].roll);
        // printf("Age:%d\n",s[i].age);
        // printf("SPI: %f", s[i].spi);
     }
    printf("Name | SPI");
     for(int i=0; i<n; i++)
     {
        if (s[i].spi>8)
        {
            printf("Name:%s    |   SPI: %f\n",s[i].name,s[i].spi);
   
        }
     }
     printf("Age is less than 19:\n ");
    for(int i=0; i<n; i++)
     {
        if (s[i].age<19)
        {
            printf("Name:%s    |   AGE: %d\n",s[i].name,s[i].age);
        }
     }

     printf("Names whos second letter is a:\n");
       for(int i=0; i<n; i++)
     {
        if (s[i].name.charAt(1)=='a')
        {
            printf("Name:%s ",s[i].name);
   
        }
     }


}