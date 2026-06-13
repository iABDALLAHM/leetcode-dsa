1class Solution {
2  bool isPalindrome(int x) {
3    int pointer1 = 0;
4    int pointer2 = x.toString().length - 1;
5
6  while (pointer1 <= pointer2) {
7    var stringNum = x.toString();
8      if (stringNum[pointer1] == stringNum[pointer2]) {
9        pointer2--;
10        pointer1++;
11      } else {
12        break;
13      }
14  }
15  if (pointer2 < pointer1) {
16    return true;
17  } else {
18    return false;
19  }
20  }
21}
22