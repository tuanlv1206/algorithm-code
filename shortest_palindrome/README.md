Given a string, find the minimum number of characters to be inserted to convert it to palindrome.

Before we go further, let us understand with few examples:
    ab: Number of insertions required is 1. bab
    aa: Number of insertions required is 0. aa
    abcd: Number of insertions required is 3. dcbabcd
    abcda: Number of insertions required is 2. adcbcda which is same as number of insertions in the substring bcd(Why?).
    abcde: Number of insertions required is 4. edcbabcde


Let the input string be str[l……h]. The problem can be broken down into three parts:
1. Find the minimum number of insertions in the substring str[l+1,…….h].
2. Find the minimum number of insertions in the substring str[l…….h-1].
3. Find the minimum number of insertions in the substring str[l+1……h-1].

Recursive Solution
The minimum number of insertions in the string str[l…..h] can be given as:
minInsertions(str[l+1…..h-1]) if str[l] is equal to str[h]
min(minInsertions(str[l…..h-1]), minInsertions(str[l+1…..h])) + 1 otherwise
