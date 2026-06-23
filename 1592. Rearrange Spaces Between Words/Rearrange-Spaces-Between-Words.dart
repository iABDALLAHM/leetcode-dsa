1class Solution {
2  String reorderSpaces(String text) {
3      List<String> words = text.trim().split(RegExp(r'\s+'));
4
5  var wordsLength = text.trim().split(RegExp(r'\s+')).length;
6
7  var numOfSpaces = text.length - text.replaceAll(RegExp(r'\s+'), "").length;
8
9  var numOfGaps = wordsLength - 1;
10
11  var newString = "";
12
13  if (wordsLength == 1) {
14    newString = words[0] + (' ' * numOfSpaces);
15  } else {
16    int spacesBetweenString = numOfSpaces ~/ numOfGaps;
17    int extraSpaces = numOfSpaces % numOfGaps;
18
19    for (int i = 0; i < words.length; i++) {
20      newString += words[i];
21
22      if (i < words.length - 1) {
23        newString += ' ' * spacesBetweenString;
24      }
25    }
26
27    newString += ' ' * extraSpaces;
28  }
29
30  return newString;
31  }
32}