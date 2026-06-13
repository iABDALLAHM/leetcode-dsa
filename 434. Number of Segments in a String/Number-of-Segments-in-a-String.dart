1class Solution {
2  int countSegments(String s) {
3  if (s.trim().isEmpty) {
4    return 0;
5  } else {
6    return s.trim().split(RegExp(r"\s+")).length;
7  }
8  }
9}