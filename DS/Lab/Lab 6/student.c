//31. Write a program to read data of students in array of structure and print it. [C]
 struct student{
        char name[100];
        int roll;
        int age;
        int sem;
        char class[100];
        
    };
#include<stdio.h>
void main(){
    int n;
    printf("Enter the size for the structure:");
    scanf("%d",&n);

    struct student s[n];
     for(int i=1;i<=n;i++){
        printf("Enter the data of student %d:\n",i);

        printf("Enter name:");
        scanf("%s",s[i].name);
         printf("Enter Roll number:");
         scanf("%d",&s[i].roll);
        printf("Enter the age:");
        scanf("%d",&s[i].age);
        printf("Enter semester:");
        scanf("%d",&s[i].sem);
        printf("Enter class:");
        scanf("%s",s[i].class);

     }

     for(int i=1; i<=n; i++)
     {
        printf("\nDetails of the student %d:\n",i);
        printf("Name: %s",s[i].name);

      
        printf("Roll no.:%d\n",s[i].roll);
        printf("Age:%d\n",s[i].age);
        printf("Sem:%d\n",s[i].sem);
        printf("Class:%s\n",s[i].class);
     }


}