1class Solution {
2  String reverseOnlyLetters(String s) {
3    
4  var listOfChars = s.split("");
5
6  int pointer1 = 0;
7  int pointer2 = s.length - 1;
8
9  while (pointer1 < pointer2) {
10    if (isEnglishLetter(char: listOfChars[pointer1]) &&
11        isEnglishLetter(char: listOfChars[pointer2])) {
12      String temp = listOfChars[pointer1];
13      listOfChars[pointer1] = listOfChars[pointer2];
14      listOfChars[pointer2] = temp;
15      pointer1++;
16      pointer2--;
17    } else if (!isEnglishLetter(char: listOfChars[pointer2])) {
18      pointer2--;
19      continue;
20    } else if (!isEnglishLetter(char: listOfChars[pointer1])) {
21      pointer1++;
22      continue;
23    }
24  }
25
26
27  return listOfChars.join();
28  }
29
30  
31bool isEnglishLetter({required String char}) {
32  var code = char.codeUnitAt(0);
33  return (code >= 65 && code <= 90) || (code >= 97 && code <= 122);
34}
35
36}