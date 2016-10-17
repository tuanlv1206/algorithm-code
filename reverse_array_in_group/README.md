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
