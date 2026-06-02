1class Solution {
2  bool isSubsequence(String s, String t) {
3  int pointer1 = 0;
4  int pointer2 = 0;
5
6  while (pointer2 < t.length && pointer1 < s.length) {
7    if (s[pointer1] == t[pointer2]) {
8      pointer1++;
9    }
10    pointer2++;
11  }
12  
13    return pointer1 == s.length;
14
15  }
16}