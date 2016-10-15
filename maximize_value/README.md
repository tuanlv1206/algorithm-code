Given an array, arr[] find the maximum value of (arr[i] – i) – (arr[j] – j) where i is not equal to j. Where i and j vary from 0 to n-1 and n is size of input array arr[].

Examples:

Input : arr[] = {9, 15, 4, 12, 13}
Output : 12
We get the maximum value for i = 1 and j = 2
(15 - 1) - (4 - 2) = 12

Input : arr[] = {-1, -2, -3, 4, 10}
Output : 6
We get the maximum value for i = 4 and j = 2
(10 - 4) - (-3 - 2) = 11

Method 1 (Naive : O(n2))

The idea is to run two loops to consider all possible pairs and keep track of maximum value of expression (arr[i]-i)-(arr[j]-j)

Method 2 (Tricky : O(n))

1) Find maximum value of arr[i] – i in whole array.
2) Find minimum value of arr[i] – i in whole array.
3) Return difference of above two values.
