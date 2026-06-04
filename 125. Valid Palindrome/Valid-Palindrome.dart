1class Solution {
2  bool isPalindrome(String s) {
3      s = s.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), "");
4
5
6  int pointer1 = 0;
7  int pointer2 = s.length - 1;
8
9  while (pointer2 > pointer1) {
10    if (s[pointer1] == s[pointer2]) {
11      pointer2--;
12      pointer1++;
13    } else {
14      break;
15    }
16  }
17  if (pointer1 >= pointer2)return true;
18  else {
19    return false;
20  }
21  }
22}