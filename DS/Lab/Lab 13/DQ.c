#include <stdio.h>
#define MAX 5
int Q[MAX];
int f=-1,r=-1;

void insertFront(int value){
    //Overflow
    if (f=0){
        printf("\n------Overflow!!--------");
        return;
    }
    //update front and rear pointer
    if(f=-1){
        f++;
    }
    else{
        f--;
    }
    Q[f]=value;

}

int deleteRear(){
    //underflow
    if(r==-1){
        printf("\n-----------Underflow!----------");
        return 0;
    }
    int y=Q[r];
    if(r==f){
        r=-1;
        f=-1;
    }
    else{
        r--;
    }
    return y;
}
void main(){
    int choice;
     while(1){
        printf("\n1.Enter 1 for insert at front:\n2.Enter 2 for delete from rear:\n4.Enter 4 for exit:");
        scanf("%d",&choice);
    
            switch(choice){
            case 1:
                int value;
                printf("\nEnter the number you want to insert:");
                scanf("%d",&value);
               insertFront(value);
                break;
            case 2:
                int elementDQ=deleteRear();
                printf("\nDequeued element is : %d", elementDQ);
                break;
            // case 3:
            //     display();
            //     break;
            case 4:
                return;
                break;
            default:
                printf("\nInvalid choice!!");
        }
    }
}