#include<stdio.h>
#include<stdlib.h>
struct Node{
    int data;
    struct Node *link;
}*first;

// function to create a new node
struct Node* newNode(int data) {
    struct Node* new_node = (struct Node*)malloc(sizeof(struct Node));
    new_node->data = data;
    new_node->link = NULL;
    return new_node;
}
// Function to insert a node at the beginning
void insertAtBeginning(struct Node** head_ref, int new_data) {
    struct Node* new_node = newNode(new_data);
    new_node->link = *head_ref;
    *head_ref = new_node;
}
// Function to insert a node at the end
void insertAtEnd(struct Node** head_ref, int new_data) {
    struct Node* new_node = newNode(new_data);

    if (*head_ref == NULL) {
        *head_ref = new_node;
        return;
    }

    struct Node* last = *head_ref;
    while (last->link != NULL) {
        last = last->link;
    }

    last->link= new_node;
}

// Function to display the linked list
void display(struct Node* head) {
    struct Node* temp = head;
    while (temp != NULL) {
        printf("%d ", temp->data);
        temp = temp->link;
    }
    printf("\n");
}

void main() {
    struct Node* head = NULL;
    int choice, data;

    while (1) {
        printf("\nMenu:\n");
        printf("1. Add at start\n");
        printf("2. Add at end\n");
        printf("3. Display\n");
        printf("4. Delete at first:\n");
        printf("5. Delete at last\n");
        printf("6. Exit\n");
        printf("Enter your choice: ");
        scanf("%d", &choice);

        switch (choice) {
            case 1:
                printf("Enter data to insert: ");
                scanf("%d", &data);
                insertAtBeginning(&head, data);
                break;
            case 2:
                printf("Enter data to insert: ");
                scanf("%d", &data);
                insertAtEnd(&head, data);
                break;
            case 3:
                printf("Linked list: ");
                display(head);
                break;
            case 4:
                exit(0);
            default:
                printf("Invalid choice!\n");
        }
    }

    return ;
}
// void insert_at_beginning(int value){
//     struct Node* newNode, *avail;
//     avail=(struct Node*) malloc(sizeof(struct Node));
//     if(avail==NULL){
//         printf("Unable to allocate!!");
//     }

//     else{
//         newNode=avail;
//         avail=avail->link;
//         newNode->data=value;
//         if(first==NULL){
//             newNode->link=NULL;
//         }
//         else{
//             newNode->link=first;
//         }
//     }
//     first=newNode;
//     printf("Data inserted!!");
// }