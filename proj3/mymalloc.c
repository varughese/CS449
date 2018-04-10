/*
 * Mathew Varughese
 * MAV120
 * Recreating malloc.
 * Make sure to compile with '-m32' flag like the project description describes.
 *
 * Tested with 'mymallocdrv' and 'mallocdrv'.
 */

#include <stdio.h>

/* Node structure to hold data about each allocation */
struct Node {
	char isFree;
	int size;
	struct Node* next;
	struct Node* prev;
};

/* First node in the linked list */
struct Node* head;
/* Last node in the linked list */
struct Node* tail;

/*
 * Helper function for my_worstfit_malloc()
 * Searches through free spots and returns 0 if no spot to fit,
 * otherwise, sends an address with a node with the largest amount
 * of space (worst fit strategy)
 */
void *_search_with_worst_fit(int size) {
	/* we initialize our variables before we go through the loop */
	/* the free_spot will contain the pointer to the Node with the worst spot */
	void* free_spot = NULL;
	/* this variable holds the worst block size found. the logic in this loop
	 * is similar to finding the max number in a linked list*/
	int worstBlockSize = 0;
	struct Node* current = head;

	/* we loop through the link list by using a "current" node, and looping
	 * through the list until current becomes NULL */
	while(current != NULL) {
		int currentBlockSize = current->size;
		int	currentBlockFree = current->isFree == 1;
		int canFit =  size <= currentBlockSize;
		int worseBlockSize = worstBlockSize < currentBlockSize;
		/* we check conditions to ensure this spot works */
		if(currentBlockFree && canFit && worseBlockSize) {
			/* if this spot fits all conditions, we set our markers to
			 * the spot we found */
			free_spot = current;
			worstBlockSize = currentBlockSize;
		}
		/* we "increment" the loop */
		current = current->next;
	}

	/* if free_spot is still NULL, then we have found no spots that cam fit */
	if(free_spot == NULL) return 0;

	/* otherwise, return the spot we found */
	return (void *)(free_spot);
}

/*
 * Helper function for my_worstfit_malloc()
 * Whenever there is not enough space to fit a new allocation, more memory
 * needs to be allocated. This function increases _brk, and sets head/tail to
 * the neccesary values
 */
void *_allocate_more_memory(int size) {
	/* We know we have to increase _brk, so we increase it by the size of
	 * a Node */
	void *current_address = (void *)sbrk(sizeof(struct Node));
	struct Node* new_node = current_address;
	new_node->isFree = 0;
	new_node->size = size;
	new_node->next = NULL;
	if(head == NULL) {
		/* If head is NULL this is the first allocation, so we set the head
		 * and tail to this node */
		head = tail = new_node;
		new_node->prev = NULL;
	} else {
		/* If the head is not NULL, then we set this node to be the tail
		*  and make the connections correct */
		tail->next = new_node;
		new_node->prev = tail;
		tail = new_node;
	}
	/* Now we increase _brk by the size, and return the start of this region */
	return (void *)(sbrk(size));
}

/*
 * The function to replace malloc(). It takes in a size of bytes,
 * and will use the worst-fit strategy to find the best position
 * to allocate the memory.
 */
void *my_worstfit_malloc(int size) {
	/* Using a linked-list structure, we try finding a spot to fit this new allocaiton */
	void* freeAddress = _search_with_worst_fit(size);
	if(freeAddress == 0) {
		/* If _search_with_worst_fit returns 0, then we need to increase the heap
		 * and allocate more memory. This function will return the new pointer as well,
		 * and we are finished with this function */
		return _allocate_more_memory(size);
	}
	/* We create a new node at the address that was found, and set it to "not free" */
	struct Node* new_node = freeAddress;
	/* isFree = 0 represents that this node is not free */
	new_node->isFree = 0;
	/* We calculate if there is leftover space */
	int remainingFreeSpace = new_node->size - size;
	if(remainingFreeSpace > 0) {
	 	/* There is more space remaining, so we are going to split that space into two nodes
		 * if possible */
		if(remainingFreeSpace > sizeof(struct Node)) {
			/* we can only split the remaining space if we can fit a Node */
			/* since we can fit a new node, we insert it in the middle of our list */
			struct Node* new_free_node = (void *)new_node + sizeof(struct Node) + size;
			new_free_node->isFree = 1;
			/* We do not actually have all of this remaining space as free, because some of
			 * that space will store the node, so we subtract that space out of what is
			 * remaining */
			new_free_node->size = remainingFreeSpace - sizeof(struct Node);
			new_free_node->prev = new_node;
			new_node->next->prev = new_free_node;
			new_free_node->next = new_node->next;
			new_node->next = new_free_node;
		} else {
			/*
			 * There is remaining space, but not enough to fit a free node
			 * so we have fragmentation!
			 * We just increase the size of this current node, which will make
			 * the logic to free'ing this node much less complex,
			 * at the expense of (in the worst case) wasting 15 bytes.
			 * 15 bytes of internal fragmentation is not terrible
			 */
			size = new_node->size;
		}
	}
	/* Set the size property of this node to either the allocation size,
	 * or if there is internal fragmentation (calculated in the "if" above), then more
	 * than the allocated size */
	new_node->size = size;
	/* We cast the node pointer to a void for proper arithmetic, and we add
	 * an offset so the user's data allocation skips the Node */
	return (void *)new_node + sizeof(struct Node);
}

/*
 * This is a helper function for my_free()
 * When a node is freed, this checks to see if that node
 * can be combined with the neighboring nodes
 */
void coalesce_nodes(void *ptr) {
	struct Node* n = ptr - sizeof(struct Node);

	if(n->next->isFree) {
		/* if the next node is free, then we add that remaining space
		 * the node we currently are add*/

		/* the next node cannot be the tail, because the tail node
		 * can never be free (when the tail is freed _brk is decreased),
		 * this means n->next will be defined */
		n->size += n->next->size + sizeof(struct Node);
		n->next = n->next->next;
		n->next->prev = n;
	}
	if(n != head && n->prev->isFree) {
		/* If the previous node is free, we add the size stored
		 * in this region of space, and the size of a node to the prev
		 * node. */
		n->prev->size += n->size + sizeof(struct Node);
		n->prev->next = n->next;
		n->next->prev = n->prev;
	}
}

/*
 * The function to replace free(). It takes in a pointer that was generated with malloc,
 * and frees that region of memory.
 */
void my_free(void *ptr) {
	/* Since malloc returns the pointer where the region starts, we
	 * subtract the size of a Node to get the node that contains the information */
	struct Node* n = ptr - sizeof(struct Node);
	int size = n->size;
	n->isFree = 1;
	/* If the node we are freeing is the tail, we can just decrease brk*/
	if(n == tail) {
		if(n == head) {
			/* if the node we free'ing is head and tail, it is the only thing left */
			head = tail = NULL;
		} else {
			/* move the tail back one since we are removing the tail */
			tail = n->prev;
			n->prev->next = NULL;
		}
		sbrk(-1 * (size + sizeof(struct Node)));
		if(head != NULL && n->prev != NULL && n->prev->isFree) {
			/* If the node before the tail is a free space, that
			 * can be called free on and brk will be lowered */
			my_free((void *)n->prev + sizeof(struct Node));
		}
	} else {
		/* if the node to the left and/or right is free, we
		 * need to combine into one bigger free node. this is
		 * called coalescing */
		coalesce_nodes(ptr);
	}
}

/* Useful testing function that prints out the linked list */
/* has to be in this file because needs "Head" */
void ____print_out_list() {
	struct Node* current = head;
	printf("\nDiagram of memory .... \n");
	printf("----------------\nHEAD: %p \nTAIL: %p \n----------------\n", head, tail);
	while(current != NULL) {
		printf("NODE: %p [%d], f: %d\n", current, current->size, current->isFree);
		printf("\t prev: %p\n", current->prev);
		printf("\t next: %p\n", current->next);

		current = current->next;
	}
}
