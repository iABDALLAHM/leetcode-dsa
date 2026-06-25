1class Solution {
2  String nextGreatestLetter(List<String> letters, String target) {
3      for (int i = 0; i < letters.length; i++) {
4    if (letters[i].codeUnitAt(0) > target.codeUnitAt(0)) {
5      return letters[i];
6      break;
7    }
8  }
9  return letters[0];
10  }
11}