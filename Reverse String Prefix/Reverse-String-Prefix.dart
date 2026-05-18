1class Solution {
2  String reversePrefix(String s, int k) {
3  List<String> str = s.split("");
4
5  int pointer1 = 0;
6  int pointer2 = k-1;
7
8  while (pointer2 >= pointer1) {
9
10    
11    String temp = str[pointer1];
12    str[pointer1] = str[pointer2];
13    str[pointer2] = temp;
14    pointer2--;
15    pointer1++;
16
17  }
18
19  return str.join();
20
21  }
22}