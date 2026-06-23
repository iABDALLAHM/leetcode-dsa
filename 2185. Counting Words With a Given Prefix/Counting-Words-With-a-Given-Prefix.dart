1class Solution {
2  int prefixCount(List<String> words, String pref) {
3      var counter = 0;
4    for (int i = 0; i < words.length; i++) {
5    if (words[i].startsWith(pref)) {
6      counter++;
7    }
8  }
9
10 return counter;
11  }
12}