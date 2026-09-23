class Solution {
  String reverseVowels(String s) {
      List<String> listOfS = s.split("");

  List<String> listOfVowels = [
    "a",
    "e",
    "i",
    "o",
    "u",
    "A",
    "E",
    "I",
    "O",
    "U",
  ];

  List<String> listOfCharVowels = [];
  String result = "";

  for (int i = listOfS.length - 1; i >= 0; i--) {
    if (listOfVowels.contains(s[i])) {
      listOfCharVowels.add(s[i]);
    }
  }
  print(listOfCharVowels);
  int pointer = 0;
  for (int i = 0; i < listOfS.length; i++) {
    if (listOfVowels.contains(s[i])) {
      listOfS[i] = listOfCharVowels[pointer];
      pointer++;
    }
  }
  return listOfS.join();
  }
}