1class Solution {
2  int isPrefixOfWord(String sentence, String searchWord) {
3     List<String> splitSentence = sentence.split(" ");
4
5  for (int i = 0; i < splitSentence.length; i++) {
6    if (splitSentence[i].startsWith(searchWord)) {
7      return i+1;
8    }
9  }
10  return -1;
11  }
12}