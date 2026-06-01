1class Solution {
2  String reverseWords(String s) {
3    var newListOfWords = s.split(" ");
4
5    String newString = "";
6
7  for (int i = 0; i < newListOfWords.length; i++) {
8    newString += "${newListOfWords[i].split("").reversed.join()} ";
9  }
10
11  return newString.trim();
12  }
13}