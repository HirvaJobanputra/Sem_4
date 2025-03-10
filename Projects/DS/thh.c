#include <stdio.h>
#include <string.h>
#define MAX_ORDERS 100
struct order {
    int id;
    char item[50];
};
struct order orders[MAX_ORDERS];
int front = -1, rear = -1, orderCount = 0;
void add() {
    if (rear >= MAX_ORDERS) {
        printf("Order queue is full!\n");
        return;
    }
    printf("Enter item name: ");
    getchar(); 
    gets(orders[rear].item); 
    orders[rear].id = ++orderCount;
    printf("Order added! ID: %d\n", orders[rear].id);
    rear++;
}
void process() {
    if (front == rear) {
        printf("No orders to process.\n");
        return;
    }
    printf("Processing Order ID: %d, Item: %s\n", orders[front].id, orders[front].item);
    int i;
    for (i = front; i < rear - 1; i++) {
        orders[i] = orders[i + 1];
    }
    rear--;
}
void display() {
    if (front == rear) {
        printf("No pending orders.\n");
        return;
    }
    printf("Orders:\n");
    int i;
    for (i = front; i < rear; i++) {
        printf("ID: %d, Item: %s\n", orders[i].id, orders[i].item);
    }
}
void search() {
    if (front == rear) {
        printf("No orders available.\n");
        return;
    }
    int searchId;
   printf("Enter Order ID to search: ");
    scanf("%d", &searchId);
    int i;
    for (i = front; i < rear; i++) {
        if (orders[i].id == searchId) {
            printf("Order Found - ID: %d, Item: %s\n", orders[i].id, orders[i].item);
            return;
        }
    }
   printf("Order with ID %d not found.\n", searchId);
}
int main() {
    int choice;
    do {
        printf("\n1. Add Order\n2. Process Order\n3. Display Orders\n4. Search Order\n5. Exit\n");
        printf("Enter choice: ");
        scanf("%d", &choice);
        switch (choice) {
            case 1:
                add();
                break;
            case 2:
                process();
                break;
            case 3:
                display();
                break;
            
            case 4:
                search();
                break;
            case 5:
                printf("Exiting prrogram\n");
                break;
            default:
                printf("Invalid choice!\n");
        }
    } while (choice != 5);
}
