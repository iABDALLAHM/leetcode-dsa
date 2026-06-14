1class Solution {
2  int numOfStrings(List<String> patterns, String word) {
3      int counter = 0;
4  for (int i = 0; i < patterns.length; i++) {
5    if (word.contains(patterns[i])) {
6      counter++;
7    }
8  }
9
10  return counter;
11  }
12}