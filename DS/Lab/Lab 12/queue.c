// #include<stdio.h>
// #define N 5
// int front=-1, rear=-1;
// int Q[N];
// void enqueue(int value){
//     if(rear>=N){
//         printf("\nQueue overflow!!");
//         return;
//     }
//     else{
//         rear++;
//         Q[rear]=value;
//         if(front==0){
//             front=1;
//         }
//     }
// }

// int dequeue(){
//     if(front==rear){
//         printf("\nQueue is empty!!");
//         return -1;
        
//     }
//     else{
//         front++;
//         return Q[front-1];
//     }
// }

// void display(){
//     if(front==rear){
//         printf("\nQueue is empty!!");
//         return;
//     }
//     else{
//         for(int i=front; i<=rear; i++){
//             printf("%d ",Q[i]);
//         }
//     }
// }

// void main(){
//     int choice,value,dqElement;
//     while(1){
//         printf("\nEnter choices: (1 for enqueue, 2 for dequeue, 3 for display, 4 for exit:)\n");
//         scanf("%d",&choice);
//         switch(choice)
//         {
//                 case 1:
//                     printf("\nEnter value:");
//                     scanf("%d",&value);
//                     enqueue(value);
//                     break;
//                 case 2:
//                     dqElement=dequeue();
//                     printf("\n{Dequeued:%d}",dqElement);
//                     break;
//                 case 3:
//                     printf("\nQueue displayed:");
//                     display();
//                     break;
//                 case 4:
//                     return;
//                     break;
//                 default:
//                     printf("\nInvalid choice!!");
//         }
//     }
    
// }

#include <stdio.h>
#include <stdlib.h>

#define MAX 5 

int queue[MAX];
int front = -1;
int rear = -1;

void enqueue(int orderId) {
    if (rear == MAX - 1) {
        printf("Queue Overflow (Order list full)\n");
    } else {
        if (front == -1) {
            front = 0;
        }
        rear++;
        queue[rear] = orderId;
        printf("Order %d added to queue\n", orderId);
    }
}

void dequeue() {
    if (front == -1 || front > rear) {
        printf("Queue Underflow (No orders to process)\n");
    } else {
        printf("Processing Order %d\n", queue[front]);
        front++;
        if (front > rear) {
            front = rear = -1; // Reset queue if empty
        }
    }
}

void display() {
    if (front == -1) {
        printf("Queue is empty (No pending orders)\n");
    } else {
        printf("Pending Orders:\n");
        for (int i = front; i <= rear; i++) {
            printf("Order ID: %d\n", queue[i]);
        }
        printf("\n");
    }
}

void search(int orderId) {
    if (front == -1) {
        printf("Queue is empty. Order %d not found.\n", orderId);
        return;
    }
    for (int i = front; i <= rear; i++) {
        if (queue[i] == orderId) {
            printf("Order %d found in queue.\n", orderId);
            return;
        }
    }
    printf("Order %d not found in queue.\n", orderId);
}

int main() {
    int choice, orderId;

    while (1) {
        printf("\n1. Add Order\n");
        printf("2. Process Order\n");
        printf("3. Display Orders\n");
        printf("4. Search Order\n");
        printf("5. Exit\n");
        printf("Enter your choice: ");
        scanf("%d", &choice);

        switch (choice) {
            case 1:
                printf("Enter Order ID: ");
                scanf("%d", &orderId);
                enqueue(orderId);
                break;
            case 2:
                dequeue();
                break;
            case 3:
                display();
                break;
            case 4:
                printf("Enter Order ID to search: ");
                scanf("%d", &orderId);
                search(orderId);
                break;
            case 5:
                exit(0);
            default:
                printf("Invalid choice\n");
        }
    }

    return 0;
}