Given an array of three colors. The array elements have a special property. Whenever two elements of different colors become adjacent to each other, they merge into an element of the third color. How many minimum number of elements can be there in array after considering all possible transformations.

Example:

Input : arr[] = {R, G}
Output : 1
G B -> {G B} R -> R

Input : arr[] = {R, G, B}
Output : 2
Explanation :
R G B -> [R G] B ->  B B
OR
R G B -> R {G B} ->  R R


Scenarios

Before you rush into solution, we would suggest you try out different examples and see if you can find any pattern.

Let us see few more scenarios:
  1. R R R, Output 3
  2. R R G B -> R [R G] B -> [R B] B -> [G B] -> R, Output 1
  3. R G R G -> [R G] R G -> [B R] G ->G G, Output 2
  4. R G B B G R -> R [G B] B G R ->R [R B] G R ->[R G] G R
                    -> [B G] R ->R R, Output 2
  5. R R B B G -> R [R B] [B G] -> R [G R] -> [R B] -> G,
                     Output 1
Did you find any pattern in output?

Possible Patterns

Let n be number of elements in array. No matter what the input is, we always end up in three types of outputs:

n: When no transformation can take place at all
2: When number of elements of each color are all odd or all even
1: When number of elements of each color are mix of odd and even
Steps:

1) Count the number of elements of each color.
2) Then only one out of the folowing four cases can happen:
......1) There are elements of only one color, return n.
......2) There are even number of elements of each color, return 2.
......3) There are odd number of elements of each color, return 2.
......4) In every other case, return 1.
        (The elements will combine with each other repeatedly until
         only one of them is left)
