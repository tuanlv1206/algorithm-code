Given a binary string, find if it is possible to make all its digits equal (either all 0’s or all 1’s) by flipping exactly one bit.

Input: 101
Output: Yes
Explanation: In 101, the 0 can be flipped
             to make it all 1

Input: 11
Output: No
Explanation: No matter whichever digit you
  flip, you will not get the desired string.

Input: 1
Output: Yes
Explanation: We can flip 1, to make all 0's

Method 1 (Counting 0’s and 1’s)

If all digits of a string can be made identical by doing exactly one flip, that means the string has all its digits equal to one another except this digit which has to be flipped, and this digit must be different than all other digits of the string. The value of this digit could be either zero or one. Hence, this string will either have exactly one digit equal to zero, and all other digits equal to one, or exactly one digit equal to one, and all other digit equal to zero.
Therefore, we only need to check whether the string has exactly one digit equal to zero/one, and if so, the answer is yes; otherwise the answer is no.

ethod 2 (Counting 0’s and 1’s)

The idea is to compute sum of all bits. If sum is n-1 or 1, then output is true, else false. This solution doesn’t require a comparison in a loop.
