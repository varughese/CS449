#include <stdio.h>
#include <stdlib.h>

struct Node {
	int grade;
	struct Node *next;
};

struct Node* createNode(int grade) {
	struct Node *current = malloc(sizeof(struct Node));
	current->grade = grade;
	current->next = NULL;
	return current;
}

void add(struct Node *head, int grade) {
	if(head->grade == -1) {
		head->grade = grade;
		return;
	}
	struct Node *current = head;
	while(current->next != NULL) {
		current = current->next;
	}

	struct Node *newNode = createNode(grade);
	current->next = newNode;
}

float averageGrades(struct Node *head) {
	struct Node *current = head;
	int n = 0;
	float sum = 0;
	while(current != NULL) {
		sum += current->grade;
		n++;
		current = current->next;
	}
	return sum/n;
}

void freeLinkedList(struct Node *head) {
	struct Node *current = head;
	struct Node *next = malloc(sizeof(struct Node));
	while(current != NULL) {
		next = current->next;
		current->next = NULL;
		free(current);
		current = next;
	}
	free(next);
	free(current);
}


int main() {
	int currentGrade;
	struct Node *head = malloc(sizeof(struct Node));
	head->grade = -1;
	printf("Enter in grades. Enter '-1' to stop.");
	while(scanf("%d", &currentGrade) && currentGrade != -1) {
		add(head, currentGrade);
	}
	float average = averageGrades(head);
	printf("Grade Average: %f.\n", average);
	freeLinkedList(head);
	return 0;
}
