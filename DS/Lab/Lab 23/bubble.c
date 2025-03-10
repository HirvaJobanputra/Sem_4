//static program

#include<stdio.h>
void main()
{
	int n=11,i,j;
	int a[11]={75,2,34,19,73,64,85,26,15,10,28};
	for(i=n-1;i>0;i--)
	{
		for( j=0;j<i;j++)
		{
			if(a[j]>a[j+1])
			{
				int temp=a[j];
				a[j]=a[j+1];
				a[j+1]=temp;
			}
		}
	}
	printf("Sorted Array:");
	for(i=0;i<n;i++)
	{
		printf("%d, ",a[i]);
	}
}

//dynamic program

//#include <stdio.h>
//#include <stdlib.h>
//
//void main() {
//    int n, i, j;
//    
//    printf("Enter the number of elements: ");
//    scanf("%d", &n);
//    
//    int *a = (int*)malloc(n * sizeof(int));
//
//    if (a == NULL) {
//        printf("Memory allocation failed!\n");
//        return;
//    }
//    
//    printf("Enter the elements of the array:\n");
//    for (i = 0; i < n; i++) {
//        scanf("%d", &a[i]);
//    }
//
//    for (i = n - 1; i > 0; i--) {
//        for (j = 0; j < i; j++) {
//            if (a[j] > a[j + 1]) {
//                int temp = a[j];
//                a[j] = a[j + 1];
//                a[j + 1] = temp;
//            }
//        }
//    }
//
//    printf("Sorted Array: ");
//    for (i = 0; i < n; i++) {
//        printf("%d ", a[i]);
//    }
//
//    free(a);
//}

