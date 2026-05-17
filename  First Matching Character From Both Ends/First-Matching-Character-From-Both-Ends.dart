1class Solution {
2  int firstMatchingIndex(String s) {
3      int pointer1 = 0;
4  int pointer2 = s.length - 1;
5      while (pointer2 >= pointer1) {
6    if (s[pointer1] == s[pointer2]) {
7      return pointer1;
8      break;
9    }
10    pointer2--;
11    pointer1++;
12  }
13  return -1;
14  }
15}