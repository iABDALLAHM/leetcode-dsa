1class Solution {
2  int vowelConsonantScore(String s) {
3
4    int numberOfVowels = 0;
5    int numberOfConsonants = 0;
6
7  s = s.replaceAll(RegExp("[0-9]"), "").replaceAll(RegExp("[^a-z]"), "");
8
9  List<String> vowels = ['a', 'e', 'i', 'o', 'u'];
10  for (int i = 0; i < s.length; i++) {
11    if (vowels.contains(s[i])) {
12      numberOfVowels++;
13    } else {
14      numberOfConsonants++;
15    }
16  }
17
18  if (numberOfConsonants == 0) {
19    return 0;
20  } else {
21     return numberOfVowels ~/ numberOfConsonants.floor();
22  }
23  }
24}