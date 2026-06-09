1class Solution {
2  bool checkString(String s) {
3      bool seenB = false;
4  for (int i = 0; i < s.length; i++) {
5    if (s[i].toLowerCase() == "a") {
6      if (seenB == true) {
7        return false;
8      }
9    } else {
10      seenB = true;
11    }
12  }
13  return true;
14  }
15}