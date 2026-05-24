1class Solution {
2  String reversePrefix(String word, String ch) {
3     String result = "";
4
5  for (int i = 0; i < word.length; i++) {
6    if (word[i] == ch) {
7    return  result =
8          word.substring(0, i + 1).split("").reversed.join() +
9          word.substring(i + 1);
10      break;
11    }
12  }
13
14  return word;
15  }
16}