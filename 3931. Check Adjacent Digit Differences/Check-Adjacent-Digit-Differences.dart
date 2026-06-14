1class Solution {
2  bool isAdjacentDiffAtMostTwo(String s) {
3      int result = 0;
4    for (int i = 0; i <= s.length - 2; i++) {
5    result = (int.parse(s[i]) - int.parse(s[i + 1])).abs();
6    if (result > 2) {
7      return false;
8    } 
9    }
10 return true;
11  }
12}
13