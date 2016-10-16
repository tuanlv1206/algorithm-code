Given an array of distinct elements, find third largest element in it.

Example :

Input  : arr[] = {1, 14, 2, 16, 10, 20}
Output : The third Largest element is 14

Input  : arr[] = {19, -10, 20, 14, 2, 16, 10}
Output : The third Largest element is 16


Method 1 (Simple) Simplest way to solve this question is to first iterate through the array and find first maximum. Store this first maximum as well as its index. Now traverse the whole array finding the second max with the changed condition. Finally traverse the array third time and find the third largest element.

Method 2 In this method, we need not to iterate array three times. We can find third largest in one traversal only.

Initialize first = a[0] and second = -INF, third = -INF
Iterate the array and compare each element with first.
If a[i] is greater than first then update all first, second and third:
third = second
second = first
first = arr[i]
Else compare arr[i] with second, if its greater than second, then update:
third = second
second = arr[i]
Else compare arr[i] with third, if its greater than third, then update:
third = arr[i]
Return third


Exercise :
Extend the above solution to find third largest when array may have duplicates. For example, if the input array is {10, 5, 15, 5, 15, 10, 1, 1}, then output should be 5. The extended solution should also work in one traversal.
