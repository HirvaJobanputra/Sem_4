/*30. Write a program to create the structure of book with book title, author name,
 publication, and price. Read data of n books and display them. [A] */
   struct book{
        char title[100];
        char author[100];
        char publication[100];
        float price;
    };

 #include<stdio.h>
 void main(){  
    int n;
    printf("Enter the size for the structure:");
    scanf("%d",&n);
    struct book b[n];

    for(int i=1;i<=n;i++){
        printf("Enter the name of the book %d:",i);
        scanf("%s",b[i].title);
        printf("Enter the name of the author of book %d:",i);
        scanf("%s",b[i].author);][
        printf("Enter the name of the publication of the book %d:",i);
        scanf("%s",b[i].publication);
        printf("Enter the price of the book %d:",i);
        scanf("%f",&b[i].price);
         printf("\n");
        
    }
    printf("\n");
    for(int i=1;i<=n;i++){
        printf("Book %d:\n",i);
        printf("Title :%s\n",b[i].title);
        printf("Author :%s\n",b[i].author);
        printf("Publication :%s\n",b[i].publication);
        printf("Price  :%f\n",b[i].price);
    
    }
}