Given a binary array of size n where n > 3. A true (or 1) value in the array means active and false (or 0) means inactive. Given a number k, the task is to find count of active and inactive cells after k days. After every day, status of i’th cell becomes inactive if its left and right cells have same value, i.e., either both are 0 or both are 1.
Since there are no cells before leftmost and after rightmost cells, the value cells before leftmost and after rightmost cells is always considered as 0 (or inactive).

We strongly recommend you to minimize your browser and try this yourself first.

Examples:

Input: cells[] = {1, 0, 1, 1}, k = 2
Output : Active Cells = 1, Inactive Cells = 3
Explanation: After 1 day, cells[] = {1, 0, 1, 0}
             After 2 days, cells[] = {1, 0, 0, 0}

Input : cells[] = {0, 1, 0, 1, 0, 1, 0, 1},  k = 3
Output: Active Cells = 2 , Inactive Cells = 6
Explanation :
After 1 day, cells[] = {1, 0, 0, 0, 0, 0, 0, 0}
After 2 days, cells[] = {0, 1, 0, 0, 0, 0, 0, 0}
After 3 days, cells[] =  {1, 0, 1, 0, 0, 0, 0, 0}

Input : cells[] = {0, 1, 1, 1, 0, 1, 1, 0},  k = 4
Output: Active Cells = 3 , Inactive Cells = 5
The only important thing is to make sure that we maintain a copy of given array because we need previous values to update for next day. Below are detailed steps.

First we copy the cells[] array into temp[] array and make changes in temp[] array according to given condition.
In the condition, it is given that if immediate left and right cell of i’th cell either inactive or active the next day i becomes inactive i.e; (cells[i-1] == 0 and cells[i+1] == 0) or (cells[i-1] == 1 and cells[i+1] == 1) then cells[i] = 0, these conditions can be applied using XOR of cells[i-1] and cells[i+1].
For 0’th index cell temp[0] = 0^cells[1] and for (n-1)’th index cell temp[n-1] = 0^cells[n-2].
Now for index 1 to n-2, do the following operation temp[i] = cells[i-1] ^ cells[i+1]
Repeat the process till k days are completed.
