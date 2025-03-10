#include<stdio.h>
#define N 5
int Q[N],front=-1,rear=-1,value,i;

void enqueue(int value)
{
	if(rear>=N-1)
	{
		printf("Queue is Overflow!\n");
		return;
	}
	else
	{
		if(front==-1)
		{
			front=0;
		}	
		rear++;
		Q[rear]=value;
	}
}
int dequeue()
{
	if(front==-1)
	{
		printf("Queue is Underflow!\n");
		return 0;
	}
	value=Q[front];
	if(front==rear)
	{
		front=0;
		rear=0;
		
	}
	front++; 
	return value;	
}
void display()
{
	if(front==-1)
	{
		printf("Queue Underflow!!\n");
		return;
	}
	else
	{
		for(i=front;i<=rear;i++)
		{
			printf("%d\n",Q[i]);
		}
	}
}
void main()
{
	int value,n;
	while(1)
	{
		printf("Enter 1 for Enqueue:\n Enter 2 for Dequeue:\n Enter 3 for Display:\n Enter 4 for Exit:\n");
		scanf("%d",&n);
		switch(n)
		{
			case 1:
				printf("Enter Value in Queue for Enqueue\n");
				scanf("%d",&value);
				enqueue(value);
				break;
				
			case 2:
				value=dequeue();
				if(value!=-1)
				{
					printf("Dequeued Value :%d\n",value);
				}
				break;
			case 3:
				display();
				break;
				
			case 4:
				return;
				break;
			
			default:
				printf("Wrong Choice!!!");
		}
	}
}