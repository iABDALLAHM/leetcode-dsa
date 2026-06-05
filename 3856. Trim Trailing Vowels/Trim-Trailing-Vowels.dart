1class Solution {
2  String trimTrailingVowels(String s) {
3      var listOfVowels = ['a', 'e', 'i', 'o', 'u'];
4
5  String newString = "";
6  for (int i = s.length - 1; i >= 0; i--) {
7    if (!listOfVowels.contains(s[i])) {
8      newString = s.substring(0, i + 1);
9      break;
10    }
11  }
12  return newString;
13  }
14}