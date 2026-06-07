1class Solution {
2  int vowelStrings(List<String> words, int left, int right) {
3    int count = 0;
4    List<String> listOfVowels = ['a', 'e', 'i', 'o', 'u'];
5    for (int i = left; i <= right; i++) {
6    int pointer1 = 0;
7    int pointer2 = words[i].length - 1;
8    if (listOfVowels.contains(words[i][pointer1]) &&
9        listOfVowels.contains(words[i][pointer2])) {
10      count++;
11    }
12  }
13  return count;
14  }
15}