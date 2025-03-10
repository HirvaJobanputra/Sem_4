#include <stdio.h>
#include <stdlib.h>

#define MAX 100

int queue[MAX];
int front = -1;
int rear = -1;

void addOrder(int orderId) {
    if (rear == MAX - 1) {
        printf("Order list full\n");
    } else {
        if (front == -1) {
            front = 0;
        }
        rear++;
        queue[rear] = orderId;
        printf("Order %d added to queue\n", orderId);
    }
}

void process_order() {
    if (front == -1 || front > rear) {
        printf("No orders to process\n");
    } else {
        printf("Processing Order %d\n", queue[front]);
        front++;
        if (front > rear) {
            front = rear = -1; 
        }
    }
}

void display() {
    if (front == -1) {
        printf("Queue is empty\n");
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