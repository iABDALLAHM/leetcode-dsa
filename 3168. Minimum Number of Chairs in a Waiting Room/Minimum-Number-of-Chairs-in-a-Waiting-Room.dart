1class Solution {
2  int minimumChairs(String s) {
3 int counter = 0;
4  int maxChairs = 0;
5  for (int i = 0; i < s.length; i++) {
6    if (s[i] == 'E') {
7      counter++;
8      if (counter > maxChairs) {
9        maxChairs = counter;
10      }
11    } else if (s[i] == 'L') {
12      counter--;
13    }
14  }
15 return maxChairs;
16  }
17}