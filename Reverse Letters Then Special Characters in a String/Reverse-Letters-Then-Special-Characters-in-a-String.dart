1class Solution {
2  String reverseByType(String s) {
3      var listOfCharAndSpecial = s.split("");
4
5  var onlyLetters = s
6      .replaceAll(RegExp(r'[^a-z]'), '')
7      .split("")
8      .reversed
9      .toList();
10
11  var onlySpecialChars = s
12      .replaceAll(RegExp(r'[a-z]'), '')
13      .split("")
14      .reversed
15      .toList();
16
17  int pointer2 = 0;
18  int pointer1 = 0;
19
20  for (int i = 0; i < listOfCharAndSpecial.length; i++) {
21    if (!isLetter(ch: listOfCharAndSpecial[i])) {
22      listOfCharAndSpecial[i] = onlySpecialChars[pointer1];
23      pointer1++;
24    } else {
25      listOfCharAndSpecial[i] = onlyLetters[pointer2];
26      pointer2++;
27    }
28  }
29
30  return listOfCharAndSpecial.join();
31  }
32
33  bool isLetter({required String ch}) {
34  int code = ch.codeUnitAt(0);
35
36  return (code >= 97 && code <= 122);
37}
38}