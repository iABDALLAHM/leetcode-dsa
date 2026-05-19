1class Solution {
2  String reverseVowels(String s) {
3  List<String> listOfString = s.split("");
4  String stringOfVowels = "aeiouAEIOU";
5
6  int pointer1 = 0;
7  int pointer2 = listOfString.length - 1;
8
9 while (pointer2 > pointer1) {
10    if (!stringOfVowels.contains(s[pointer1])) {
11      pointer1++;
12      continue;
13    }
14
15    if (!stringOfVowels.contains(s[pointer2])) {
16      pointer2--;
17      continue;
18    }
19
20      String temp = listOfString[pointer1];
21      listOfString[pointer1] = listOfString[pointer2];
22      listOfString[pointer2] = temp;
23      pointer2--;
24      pointer1++;
25
26  }
27
28    return listOfString.join();
29
30  }
31}