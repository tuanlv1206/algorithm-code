Given a binary array, find the maximum number zeros in an array with one flip of a subarray allowed. A flip operation switches all 0s to 1s and 1s to 0s.

Examples:

Input :  arr[] = {0, 1, 0, 0, 1, 1, 0}
Output : 6
We can get 6 zeros by flipping the subarray {1, 1}

Input :  arr[] = {0, 0, 0, 1, 0, 1}
Output : 5

Method 1 (Simple : O(n2))

A simple solution is to consider all subarrays and find a subarray with maximum value of (count of 1s) – (count of 0s). Let this value be max_diff. Finally return count of zeros in original array plus max_diff.


Method 2 (Efficient : O(n))

This problem can be reduced to largest subarray sum problem. The idea is to consider every 0 as -1 and every 1 as 1, find the sum of largest subarray sum in this modified array. This sum is our required max_diff ( count of 0s – count of 1s in any subarray). Finally we return the max_diff plus count of zeros in original array.
