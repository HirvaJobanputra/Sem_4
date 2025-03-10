#include<stdio.h>
void main(){
    int n,m;
    printf("Enter the size of the row the matrix ");
    scanf("%d",&m);
     printf("Enter the size of the column the matrix ");
     scanf("%d",&n);

    int matrixA[m][n];
    int matrixB[m][n];
    int sum[m][n];
     printf("Enter the elements of matrix 1:");
     for (int i=0; i<m; i++)
     {
        for(int j=0; j<n; j++)
        {
            scanf("%d",&matrixA[i][j]);
        }
     }

     printf("Enter the elements of matrix 2:");
     for (int i=0; i<m; i++)
     {
        for(int j=0; j<n; j++)
        {
            scanf("%d",&matrixB[i][j]);
        }
     }

     printf("Here is the matrix 1:");
     printf("\n");
      for (int i=0; i<m; i++)
     {
        for(int j=0; j<n; j++)
        {
            printf("%d\t",matrixA[i][j]);
        }
        printf("\n");
     }

     printf("Here is the matrix 2:");
     printf("\n");
      for (int i=0; i<m; i++)
     {
        for(int j=0; j<n; j++)
        {
            printf("%d\t",matrixB[i][j]);
        }
        printf("\n");
     }


     // Sum of both matrices
     
      for (int i=0; i<m; i++)
     {
        for(int j=0; j<n; j++)
        {
          sum[i][j]=matrixA[i][j]+matrixB[i][j];
        }
     }
      printf("Here is the sum of matrix 1 and matrix 2:");
      printf("\n");
      for (int i=0; i<m; i++)
     {
        for(int j=0; j<n; j++)
        {
            printf("%d\t",sum[i][j]);
        }
        printf("\n");
     }

}