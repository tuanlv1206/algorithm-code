A string S consisting only of the letters "A", "B" and "C" is given. This string can be transformed according to one of the following rules:

1. substitute one occurrence of "AB" with "AA",
2. substitute one occurrence of "BA" with "AA",
3. substitute one occurrence of "CB" with "CC",
4. substitute one occurrence of "BC" with "CC",
5. substitute one occurrence of "AA" with "A",
6. substitute one occurrence of "CC" with "C".

The rule is useful if we can transform the string by using it. If there is at least one useful rule, one of the useful rules is picked at random and the string is transformed according to that rule (exactly one occurrence should be substituted). As long as there are useful rules, the above process should be repeated.

Write a function:

class Solution { public String solution(String S); }

that, given a string S consisting of N characters, returns any string that can result from a sequence of transformations as described above.

For example, given string S = "ABBCC" the function may return "AC", because this is one of the possible sequences of transformations:

"ABBCC": useful rules are 1, 4 and 6. We pick rule number 1;
"AABCC": useful rules are 1, 4, 5 and 6. We pick rule number 5;
"ABCC": useful rules are 1, 4 and 6. We pick rule number 4;
"ACCC": we pick rule number 6;
"ACC": we pick rule number 6;
"'AC'": there are no useful rules, so no further rule can be applied.
Assume that:

the length of S is within the range [0..50,000];
string S consists only of the following characters: "A", "B" and/or "C".
Complexity:

expected worst-case time complexity is O(N);
expected worst-case space complexity is O(N) (not counting the storage required for input arguments).
