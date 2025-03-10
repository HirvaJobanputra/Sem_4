#include<stdio.h>
#include<stdlib.h>
struct node{
	int data;
	struct node *next;
}*first;
//Insert at first
void beginInsert(int value){
	struct node *avail,*newNode;
	avail= (struct node *)malloc(sizeof(struct node));
	if(avail==NULL){
		printf("Unable to allocate memory!\n");
	}else{
		newNode=avail;
		avail=avail->next;
		newNode->data=value;
		if(first==NULL){
			newNode->next=NULL;
		}else{
			newNode->next=first;
		}
		first=newNode;
		printf("Element Insert at First Successfully!\n");
	}
}
//Insert at End
void endInsert(int value){
	struct node *avail,*newNode,*ptr;
	avail= (struct node *)malloc(sizeof(struct node));
	if(avail==NULL){
		printf("Unable to allocate memory!\n");
	}else{
		newNode=avail;
		avail=avail->next;
		newNode->data=value;
		newNode->next=NULL;
		if(first==NULL){
			first=newNode;
		}else{
			ptr=first;
			while(ptr->next != NULL){
				ptr=ptr->next;
			}
			ptr->next=newNode;
		}
		printf("Element Insert at Last Successfully!\n");
	}
}
//Display
void display(){
	struct node *avail,*newNode,*ptr;
	if(first==NULL){
		printf("Linked List is Empty!\n");
	}else{
		ptr=first;
		printf("Data in Linked List: \n");
		while(ptr != NULL){
			printf("%d\n",ptr->data);
			ptr=ptr->next;
		}
	}	
}

// Delete at first
void deleteFirst(){
	struct node *ptr;
	int value;
	if(first==NULL){
		printf("\nLink is empty");
	}
	else{
		if(first->next==NULL){
			ptr=first;
			value=first->data;
			printf("%d successfully deleted", value);
			free(first);
			first=NULL;
			return;
		}
		else{
			ptr=first;
			value=first->data;
			first=ptr->next;
			printf("%d deleted successfully!!",value);
			free(ptr);
			
		}
	}
}

// Delete at end
void deleteEnd(){
	struct node *ptr,*prePtr;
	int value;
	if(first==NULL){
		printf("\nLinked list is empty");
	}
	else{
			// if only node exists in the list
			if(first->next==NULL){
				ptr=first;
				value=first->data;
				printf("%d deleted successfully!!!", value);
				free(first);
				first=NULL;
				
			}
			else{
				ptr=first;
				prePtr=first;

				while(ptr->next!=NULL){
					prePtr=ptr;
					ptr=ptr->next;

				}
				printf("%d deleted successfully!!!", ptr->data);
				prePtr->next=NULL;
				free(ptr);	
			}
	}
}

// count the nodes
void countNodes(){
    int count=0;
    struct node *ptr;
    ptr=first;

    while(ptr!=NULL){
        count+=1;
        ptr=ptr->next;
    }
    printf("------------- Number of nodes = %d ------------------",count);
}

void main(){
	int value,choice;
	while(1){
		printf("\nMenu:\n");
        printf("1. Add at start\n");
        printf("2. Add at end\n");
		printf("3. Insert at specific location:\n");
        printf("3\4. Display\n");
        printf("5. Delete at first:\n");
        printf("6. Delete at last\n");
		printf("7. Delete at specific location:\n");
        printf("8. Count the nodes\n");
        printf("9. Exit\n");

        printf("Enter your choice: ");
        scanf("%d", &choice);
		switch(choice){
			case 1:
				printf("Enter value for Begin:\n");
				scanf("%d",&value);
				beginInsert(value);
				break;
			case 2:
				printf("Enter value for End:\n");
				scanf("%d",&value);
				endInsert(value);
				break;
			case 3:
				display();
				break;
			case 4:
				deleteFirst();
				break;
			case 5:
				deleteEnd();
				break;
            case 6:
                countNodes();
                break;
			case 7:
				return;
				break;
			default:
				printf("Wrong Choice!\n");	
		}
	}
}
//44. Perform following operations on a link list (Consider current link list is empty)
//[A]:
//a. Insert first: 15, 75, 32
//b. Display
//c. Insert last: 78, 37, 28
//d. Display
//45. WAP to implement following operation on link list: Insert at first, Insert at last,
//and Display.