#include<stdio.h>
#define N 5
int S[N],top=-1,i;
//inserting the data
void push(int x)
{
	if(top>=N-1){
		printf("------Stack overflow--------\n");
		return;
	}
	top++;
	S[top]=x;
	return;
}
//deleting the data
int pop()
{
	if(top==-1){
		printf("-------Stack overflow----------\n");
		return -1;
	}
	else{
		top--;
		return(S[top+1]);
	}
}
//display the data
void display()
{
	if(top==-1){
		printf("-----------Stack overflow----------\n");
		return;
	}
	else{
		for(i=top;i>=0;i--){
			printf("%d\n",S[i]);
		}
	}
}
// // void peep
// int peep(int pos){
//     if(top-pos+1<=0)
//     {
//         printf("------------Stack underflow.--------------\n");
//     }
//     else{
//         return(S[top-pos+1]);
//     }
// }
// // void change
// void change(int pos, int value){
//     if(top-pos+1<=0)
//     {
//         printf("-------Stack underflow.-------\n");
//     }
//     else{
//         S[top-pos+1]=value;
//     }
// }
//main method
void main(){
	int x,choice,a,value,pos;
	while(1){
		printf("Enter choice:\n1 for PUSH:\t2 for POP:\t 3 for DISPlAY:\t6 for exit:");
		scanf("%d",&choice);
		switch(choice){
			case 1:
				printf("///Enter value for the push:///\n");
				scanf("%d",&x);
				push(x);
				break;
			case 2:
//				scanf("%d",&x);
				printf("{Popped : %d}\n",pop());
//				break;
//				if(x!=-1){
//					printf(" pop value:%d\n");
//				}
				break;
			case 3:
				
				display();
				break;
            // case 4:
            //     printf("///Enter position:///n");
            //     scanf("%d",&pos);
            //     int peeped_value=peep(pos);
            //     printf("{Peeped value is : %d}\n",peeped_value);
            //     break;

            // case 5:
            //     printf("///Enter position:///\n");
            //     scanf("%d",&pos);
            //     printf("///Enter value to be changed:///");
            //     scanf("%d",&value);
            //     change(pos,value);
            //     break;

			case 6:
				return;
				break;
			default:
				printf("!!!!!!!!!!!!Invalid choice!!!!!!!!!!!!!!!!!\n");
		}
	}
}