1class Solution {
2  void reverseString(List<String> s) {
3  
4  int pointer1 = 0;
5  int pointer2 = s.length - 1;
6
7  while (pointer2 > pointer1) {
8  String  temp = s[pointer1];
9    s[pointer1] = s[pointer2];
10    s[pointer2] = temp;
11    pointer2--;
12    pointer1++;
13  }
14  }
15}