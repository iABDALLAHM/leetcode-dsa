1class Solution {
2  bool isPrefixString(String s, List<String> words) {
3    int pointer1 = 0;
4  StringBuffer newWord = StringBuffer();
5  while (pointer1 < words.length) {
6    if (newWord.toString() != s) {
7      newWord.write(words[pointer1]);
8      print(newWord);
9    }
10    pointer1++;
11  }
12
13  if (s == newWord.toString()) {
14    return true;
15  } else {
16    return false;
17  }
18  }
19}