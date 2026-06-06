1class Solution {
2  int countPrefixes(List<String> words, String s) {
3
4  int numOfOccer = 0;
5
6  for (int i = 0; i < words.length; i++) {
7    if (s.startsWith(words[i])) {
8      numOfOccer++;
9    }
10  }
11
12  return numOfOccer;
13  }
14}