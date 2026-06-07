1class Solution {
2  int mostWordsFound(List<String> sentences) {
3      List<int> lengthOfSentences = [];
4
5  for (int i = 0; i < sentences.length; i++) {
6    lengthOfSentences.add(sentences[i].split(" ").length);
7  }
8
9  int maxNumOfWords = lengthOfSentences[0];
10
11  for (int i = 0; i < lengthOfSentences.length; i++) {
12    if (lengthOfSentences[i] >= maxNumOfWords) {
13      maxNumOfWords = lengthOfSentences[i];
14    }
15  }
16
17  return maxNumOfWords;
18  }
19}