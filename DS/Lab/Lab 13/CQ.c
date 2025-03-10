#include <stdio.h>
#define MAX 5
int Q[MAX];
int f=-1,r=-1;
int count=0;
void enqueue(int value){
    if((r+1)%MAX==f){
        printf("\n-------------Queue Overflow---------------");
        return;
    }
    else{
        r=(r+1)%MAX;
        Q[r]=value;
        count++;

        if(f==-1){
            f=0;
        }
        printf("Count:%d",count);
    }
}

// dequeue method
int dequeue(){
    if(f==-1){
        printf("\n-------Underflow--------");
        return 0;
    }
    else{
        int y=Q[f];
        count--;
        if(count==0){
            f=-1;
            r=-1;
        }
        else{
            f=(f+1)%MAX;

        }
        printf("Count:%d",count);
        return y;
    }
}

void display(){
    // check for queue underflow
    if (f==-1){
        printf("\n-------------Queue underflow---------");
        return;
    }
    int i=f;
    printf("\nElements in the Queue:\n");
    // display
    if (i<=r){
        while(i<=r){
            printf("%d ",Q[i]);
            i++;
        }
    }
    else{
        while (i<=MAX){
            printf("%d ",Q[i]);
            i++;
        }
        i=1;
        while(i<=r){
            printf("%d ",Q[i]);
            i++;
        }
    }
    return;

}
void main(){

    int choice;
     while(1){
        printf("\n1.Enter 1 for insert:\n2.Enter 2 for dequeue:\n3.Enter 3 for display:\n4.Enter 4 for exit:");
        scanf("%d",&choice);
    
            switch(choice){
            case 1:
                int value;
                printf("\nEnter the number you want to insert:");
                scanf("%d",&value);
                enqueue(value);
                break;
            case 2:
                int elementDQ=dequeue();
                printf("\nDequeued element is : %d", elementDQ);
                break;
            case 3:
                display();
                break;
            case 4:
                return;
                break;
            default:
                printf("\nInvalid choice!!");

        }
    }
   
}