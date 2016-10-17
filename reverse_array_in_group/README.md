Given an array, reverse every sub-array formed by consecutive k elements.

Examples:

Input:
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
k = 3
Output:
[3, 2, 1, 6, 5, 4, 9, 8, 7]

Input:
arr = [1, 2, 3, 4, 5, 6, 7, 8]
k = 5
Output:
[5, 4, 3, 2, 1, 8, 7, 6]

Input:
arr = [1, 2, 3, 4, 5, 6]
k = 1
Output:
[1, 2, 3, 4, 5, 6]

Input:
arr = [1, 2, 3, 4, 5, 6, 7, 8]
k = 10
Output:
[8, 7, 6, 5, 4, 3, 2, 1]


The idea is very simple. We consider every sub-array of size k starting from beginning of the array and reverse it. We need to handle some special cases. If k is not multiple of n where n is size of the array, for last group we will have less than k elements left, we need to reverse all remaining elements. If k = 1, array should remain unchanged. If k >= n, we reverse all elements present in the array.


Variation 1 (Reverse Alternate Groups):

Reverse every alternate sub-array formed by consecutive k elements.
Examples:

Input:
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
k = 3
Output:
[3, 2, 1, 4, 5, 6, 9, 8, 7]

Input:
arr = [1, 2, 3, 4, 5, 6, 7, 8]
k = 2
Output:
[2, 1, 3, 4, 6, 5, 7, 8]


Variation 2 (Reverse at given distance):

Reverse every sub-array formed by consecutive k elements at given distance apart.
Examples:
Input:
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
k = 3
m = 2
Output:
[3, 2, 1, 4, 5, 8, 7, 6, 9, 10]

Input:
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
k = 3
m = 1
Output:
[3, 2, 1, 4, 7, 6, 5, 8, 10, 9]

Input:
arr = [1, 2, 3, 4, 5, 6, 7, 8]
k = 2
m = 0
Output:
[2, 1, 4, 3, 6, 5, 8, 7]


ariation 3 (Reverse by doubling the group size):

Reverse every sub-array formed by consecutive k elements where k doubles itself with every sub-array.
Examples:
Input:
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
k = 1
Output:
[1], [3, 2], [7, 6, 5, 4], [15, 14, 13, 12, 11, 10, 9, 8]
