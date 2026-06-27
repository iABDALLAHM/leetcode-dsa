1class Solution {
2  bool hasSameDigits(String s) {
3      while (s.length > 2) {
4    String newString = "";
5    for (int i = 0; i < s.length - 1; i++) {
6      int num1 = int.parse(s[i]);
7      int num2 = int.parse(s[i + 1]);
8
9      newString += ((num1 + num2) % 10).toString();
10    }
11    s = newString;
12  }
13
14  return s[0] == s[1];
15  }
16}