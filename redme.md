#  Dynamic Memory Allocation System

This project is based on COL106: Data Structures (Sem I 2020–2021) and implements a Dynamic Memory Allocation System using various data structures including Doubly Linked Lists, Binary Search Trees (BSTs), and AVL Trees.
The allocator mimics real-world dynamic memory management (like malloc) and supports allocation, freeing, and defragmentation of memory blocks using different strategies.

## 📦 Features
* Simulates Dynamic Memory Allocation over an array of memory blocks.
* Implements two allocation strategies:
* First Split Fit: Allocates the first free block large enough, then splits it.
* Best Split Fit: Allocates the best-fit block with minimal leftover, then splits it.
* Supports Defragmentation: Merges adjacent free blocks to combat memory fragmentation.
* All memory blocks are represented as [startAddress, size].

# 🧱 Data Structures Used

##### Assignment 1 – Doubly Linked List

* Implements Dictionary using a custom doubly linked list (DLL).
* Supports Insert, Delete, Find, getFirst, getNext, and sanity functions.
* Used to maintain Free and Allocated Memory Blocks (FMB, AMB).
* Files: A1List.java, A1DynamicMem.java.

##### Assignment 2 – Binary Search Tree

* Replaces DLL with BST for faster lookup.
* Implements the same Dictionary interface with BST.
* Adds Defragmentation using efficient in-order traversal and merging.
* Files: BSTree.java, A2DynamicMem.java.

##### Assignment 3 – AVL Tree

* Uses self-balancing AVL Trees to ensure O(log n) time complexity for operations.
* Enhances the performance of allocation and freeing over time.
* Files: AVLTree.java.


# 🛠️ Core Operations

* Allocate(int blockSize): Finds and splits a suitable free block.
* Free(int startAddress): Releases a previously allocated block.
* Defragment(): Merges contiguous free blocks for optimal memory utilization.


# ⏱️ Time Complexities

| Operation     | DLL (A1)    | BST (A2)         | AVL (A3)   |
| ------------- | ----------- | ---------------- | ---------- |
| Insert        | O(1)        | O(h), worst O(n) | O(log n)   |
| Delete        | O(1)        | O(h)             | O(log n)   |
| Find          | O(n)        | O(h)             | O(log n)   |
| getFirst/Next | O(1) / O(1) | O(log n) / O(1)  | O(log n)   |
| Allocate/Free | O(n)        | O(h)             | O(log n)   |
| Defragment    | O(n²)       | O(n log n)       | O(n log n) |


## Usage

1. To run the Dynamic Memory Allocator project, follow these steps:
2. 
3. Clone the repository: git clone https://github.com/MrNoBuddyy/DynamicMemoryAllocator
4. Use java 8 or above 
5. Navigate to the project directory: `cd /DynamicMemoryAllocator`
6. Make the sell script executable: `chmod +x run.sh`
7. Execute the sell script: `./run.sh all` 

