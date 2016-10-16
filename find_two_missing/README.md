Given an array of n unique integers where each element in the array is in range [1, n]. The array has all distinct elements and size of array is (n-2). Hence Two numbers from the range are missing from this array. Find the two missing numbers.

Examples:

Input  : arr[] = {1, 3, 5, 6}
Output : 2 4

Input : arr[] = {1, 2, 4}
Output : 3 5

Input : arr[] = {1, 2}
Output : 3 4

method 1
O(n)

Method 2 – O(n) time complexity and O(n) Extra Space

Step 1: Take a boolean array mark that keeps track of all the elements present in the array.
Step 2: Iterate from 1 to n, check for every element if it is marked as true in the boolean array, if not then simply display that element.


Method 3 – O(n) time complexity and O(1) Extra Space

The idea is based on this popular solution for finding one missing numbers. We extend the solution so that two missing elements are printed.
Let’s find out the sum of 2 missing numbers:

arrSum => Sum of all elements in the array

sum (Sum of 2 missing numbers) = (Sum of integers from 1 to n) - arrSum
                               = ((n)*(n+1))/2 – arrSum

avg (Average of 2 missing numbers) = sum / 2;
One of the numbers will be less than or equal to avg while the other one will be strictly greater then avg. Two numbers can never be equal since all the given numbers are distinct.
We can find the first missing number as sum of natural numbers from 1 to avg, i.e., avg*(avg+1)/2 minus the sum of array elements smaller than avg
We can find the second missing number as sum of natural numbers from avg+1 to n minus the sum of array elements greater than than avg
Consider an example for better clarification

Input : 1 3 5 6, n = 6
Sum of missing integers = n*(n+1)/2 - (1+3+5+6) = 6.
Average of missing integers = 6/2 = 3.
Sum of array elements less than or equal to average = 1 + 3 = 4
Sum of natural numbers from 1 to avg = avg*(avg + 1)/2
                                     = 3*4/2 = 6
First missing number = 6 - 4 = 2

Sum of natural numbers from avg+1 to n
                                =  n*(n+1)/2 - avg*(avg+1)/2
                                =  6*7/2 - 3*4/2
                                =  15
Sum of array elements greater than average = 5 + 6 = 11
Second missing number = 15 - 11 = 4
