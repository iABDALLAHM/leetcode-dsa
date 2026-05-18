1class Solution {
2  String reversePrefix(String s, int k) {
3
4  int pointer1 = k - 1;
5
6  StringBuffer result = StringBuffer();
7
8  while (pointer1 >= 0) {
9    result.write(s[pointer1]);
10    pointer1--;
11  }
12
13  result.write(s.substring(k));
14  
15  return result.toString();
16
17  }
18}